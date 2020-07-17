DROP TABLE IF EXISTS "events";
DROP TABLE IF EXISTS "consumerOffsets";
DROP TABLE IF EXISTS "producerStreamRelations";

CREATE TABLE IF NOT EXISTS "events"
(
  "streamName" varchar(255) not null,
  "eventName"  varchar(255) not null,
  "createdAt"  timestamptz  default now(),
  "sequence"   bigint       not null,
  "eventId"    char(36)     not null,
  "event"      jsonb        not null
);

CREATE UNIQUE INDEX events_streamname_eventname_sequence_eventid_uindex
    ON events ("streamName", "eventName", "createdAt", "sequence", "eventId");

CREATE INDEX events_streamname_eventid_uindex ON events("streamName", "eventId");

CREATE INDEX events_sequence ON events (sequence);

CREATE INDEX events_payload ON events((event->>'payload'));

CREATE TABLE IF NOT EXISTS "consumerOffsets"
(
  "consumerId" CHAR(36)     NOT NULL,
  "streamName" VARCHAR(255) NOT NULL,
  "eventName"  VARCHAR(255) NOT NULL,
  "offset"     BIGINT       NOT NULL,
  "movedAt"    timestamptz  default now()
);

CREATE UNIQUE INDEX consumeroffsets_consumerid_streamname_eventname_uindex
  ON "consumerOffsets" ("consumerId", "streamName", "eventName");

CREATE TABLE IF NOT EXISTS "producerStreamRelations"
(
  "producerId" CHAR(36)     NOT NULL,
  "streamName" VARCHAR(255) NOT NULL
);

CREATE UNIQUE INDEX producerstreamrelations_streamname_uindex
  ON "producerStreamRelations" ("streamName");


--
-- Functions
--

--
-- Ranking
--

CREATE OR REPLACE FUNCTION ranking(numeric, numeric[], int)
    RETURNS integer AS $$
DECLARE
    current_value ALIAS FOR $1;
    array_of_values ALIAS FOR $2;
    number_of_groups ALIAS FOR $3;
    result integer;
BEGIN
    WITH array_unnest AS (
        SELECT unnest(array_of_values) as a
    ), stddev_values as (
        SELECT (AVG(a) - STDDEV_SAMP(a) * 2) as low_stddev,
               (SELECT (AVG(a) + STDDEV_SAMP(a) * 2) FROM array_unnest) as high_stddev
        FROM array_unnest
    ), bounds AS (
        SELECT MIN(a) as lower_bound,
               (SELECT MAX(a) FROM array_unnest WHERE a <= (SELECT high_stddev FROM stddev_values) AND a <> 0) as upper_bound
        FROM array_unnest
        WHERE a >= (SELECT low_stddev FROM stddev_values)
    ), indexes AS (
        SELECT a,
               CASE WHEN a < (SELECT low_stddev FROM stddev_values) THEN
                                    1.00
                                    * (SELECT low_stddev FROM stddev_values)
                                / (SELECT abs(upper_bound) FROM bounds)
                            * 100
                    WHEN a <= (SELECT high_stddev FROM stddev_values) THEN
                                    1.00
                                    * a
                                / (SELECT abs(upper_bound) FROM bounds)
                            * 100
                    ELSE 100
                   END as index
        FROM array_unnest
    ), tiles AS (
        SELECT DISTINCT(round(index)) as base, NTILE(number_of_groups) OVER (ORDER BY round(index)) as tile
        FROM indexes
        GROUP BY round(index)
    )
    SELECT tile into result
    FROM tiles
    WHERE base = (SELECT round(index) FROM indexes WHERE base = round(index) AND a = current_value LIMIT 1);

    RETURN result;
END;
$$ LANGUAGE plpgsql;

--
-- Search
--

CREATE OR REPLACE FUNCTION search_results(text)
    RETURNS TABLE(
        label    text,
        category text,
        url      text
     )
AS $$
DECLARE
    queryString ALIAS FOR $1;
BEGIN
    RETURN QUERY
        SELECT
            DISTINCT(CONCAT_WS('/', e."streamName",  e."eventName")) as label,
            'events' as category,
            CASE
                WHEN e."eventName" ILIKE ('%' || queryString || '%')
                    THEN FORMAT('/admin/streams/%s/events?eventName=%s', e."streamName", e."eventName")
                ELSE FORMAT('/admin/streams/%s/events?eventId=%s', e."streamName", e."eventId")
            END AS url
        FROM events e
        WHERE e."eventName" ILIKE ('%' || queryString || '%') OR e."eventId" = queryString OR e.event->>'payload' ILIKE ('%' || queryString || '%')
        UNION ALL
        SELECT
            pSR."streamName" as label,
            'streams' as category,
            CASE
                WHEN psr."streamName" ILIKE ('%' || queryString || '%')
                    THEN FORMAT('/admin/streams/%s/events', pSR."streamName")
                ELSE FORMAT('/admin/streams?producerId=%s', pSR."producerId")
            END AS url
        FROM "producerStreamRelations" pSR
        WHERE psr."streamName" ILIKE ('%' || queryString || '%') OR pSR."producerId" = queryString
        UNION ALL
        SELECT
            DISTINCT (CONCAT_WS('/', cO."streamName",  cO."consumerId")) as label,
            'consumers' as category,
            FORMAT('/admin/streams/%s/consumers?consumerId=%s',cO."streamName", cO."consumerId") as url
        FROM "consumerOffsets" cO
        WHERE cO."consumerId" = queryString;
END;
$$ LANGUAGE plpgsql;

DROP SEQUENCE IF EXISTS integrationgdrivesync;
DROP SEQUENCE IF EXISTS integrationthreegdrivesync;
DROP SEQUENCE IF EXISTS integrationtwogdrivesync;
