CREATE OR REPLACE FUNCTION stream_stats_data() RETURNS json
    IMMUTABLE
    STRICT
    LANGUAGE SQL
as
$$
WITH number_of_events as
(
 SELECT pSR."streamName",
        COALESCE(e.eventscount, 0) AS "eventsCount",
        COALESCE(cOF."countConsumedEvents", 0) AS "consumedEvents"
 FROM "producerStreamRelations" pSR
          LEFT JOIN (
     SELECT
         COUNT(1) AS eventscount,
         "streamName" AS "streamName"
     FROM events e
     GROUP BY e."streamName"
 ) AS e USING ("streamName")
          LEFT JOIN (
     SELECT
         SUM("offset") AS "countConsumedEvents",
         "streamName"
     FROM "consumerOffsets"
     GROUP BY "consumerOffsets"."streamName"
 ) AS cOF USING ("streamName")
 ORDER BY pSR."streamName" DESC
)

SELECT json_agg(q)
FROM (
     SELECT
         "streamName",
         "eventsCount",
         "consumedEvents",
         repeat(
             text '✭',
             ranking("eventsCount", (SELECT array_agg("eventsCount") FROM number_of_events), 5)
         ) as ranking
     FROM number_of_events
) q
$$;

ALTER FUNCTION stream_stats_data() OWNER TO root;

/************************************************/

CREATE OR REPLACE FUNCTION stream_chart_data() RETURNS json
    IMMUTABLE
    STRICT
    LANGUAGE SQL
as
$$
SELECT json_agg(q)
FROM (
    SELECT
        e."streamName" as label,
        COUNT(e."eventId") as value
    FROM events e
    GROUP BY label
    ORDER BY value DESC
    LIMIT 10
) q;
$$;

ALTER FUNCTION stream_chart_data() OWNER TO root;

/************************************************/

CREATE OR REPLACE FUNCTION events_for_current_month() RETURNS json
    IMMUTABLE
    STRICT
    LANGUAGE SQL
as
$$
WITH events_per_day AS (
    SELECT
        CAST(calendar.entry as date) as date,
        COALESCE(COUNT("eventId"), 0) as eventCount
    FROM
        generate_series(
            date_trunc('month', current_date),
            date_trunc('month', current_date) + interval '1 month' - interval '1 day',
            interval '1 day'
        ) as calendar(entry)
    LEFT JOIN events ON CAST(events."createdAt" as date) = calendar.entry
    GROUP BY calendar.entry
    ORDER BY calendar.entry
)

SELECT json_agg(t)
FROM (
    SELECT date, eventCount,
    CASE
        WHEN LAG(eventCount, 1) OVER (order by date) IS NULL
        THEN ''

        WHEN eventCount - LAG(eventCount, 1) OVER (ORDER BY date) = 0
        THEN ''

        WHEN eventCount - LAG(eventCount, 1) OVER (ORDER BY date) < 0
        THEN FORMAT('-%3s', LAG(eventCount, 1) OVER (ORDER BY date) - eventCount)

        ELSE FORMAT('+%3s', eventCount - LAG(eventCount, 1) OVER (ORDER BY date))
    END AS progress
    FROM events_per_day
) t
$$;

ALTER FUNCTION events_for_current_month() OWNER TO root;

/************************************************/

CREATE OR REPLACE FUNCTION months_between(time_start timestamptz, time_end timestamptz) RETURNS INTEGER
    IMMUTABLE
    STRICT
    LANGUAGE SQL
as
$$
SELECT (12 * extract('years' from a.i) + extract('months' from a.i))::integer
FROM (values (justify_interval($2 - $1))) as a (i)
$$;

ALTER FUNCTION months_between(timestamptz, timestamptz) OWNER TO root;