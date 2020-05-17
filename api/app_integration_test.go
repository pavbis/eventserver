package api

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"net/http/httptest"
	"os"
	"reflect"
	"testing"
)

var a App

var (
	dbUser     = os.Getenv("DB_USER")
	dbPassword = os.Getenv("DB_PASSWORD")
	dbName     = os.Getenv("DB_NAME")
	dbHost     = os.Getenv("DB_HOST")
	dbPort     = os.Getenv("DB_PORT")
	dbSSLMode  = os.Getenv("DB_SSLMODE")
)

const (
	tableCreationQuery = `DROP TABLE IF EXISTS "events";
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
  ON events ("streamName", "eventName", sequence, "eventId");

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
  ON "producerStreamRelations" ("streamName");`

	storeFunctionsQuery = `
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

SELECT json_agg(json_strip_nulls(row_to_json(q)))
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
SELECT json_agg(json_strip_nulls(row_to_json(q)))
FROM (
    SELECT
        pSR."streamName" as label,
        COUNT(e) as value
    FROM "producerStreamRelations" pSR
        LEFT JOIN events e USING("streamName")
    GROUP BY pSR."streamName"
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

SELECT json_agg(json_strip_nulls(row_to_json(t)))
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
`
)

func executeRequest(req *http.Request) *httptest.ResponseRecorder {
	rr := httptest.NewRecorder()
	a.Router.ServeHTTP(rr, req)

	return rr
}

func checkResponseCode(t *testing.T, expected, actual int) {
	if expected != actual {
		t.Errorf("Expected response code is %d. Got %d", expected, actual)
	}
}

func readFileContent(filename string) []byte {
	data, err := ioutil.ReadFile(filename)
	if err != nil {
		fmt.Println("File reading error", err)
		return nil
	}

	return data
}

func checkResponseBody(t *testing.T, body []byte, expected []byte) {
	var m1 map[string]interface{}
	_ = json.Unmarshal(body, &m1)

	var m2 map[string]interface{}
	_ = json.Unmarshal(expected, &m2)

	if !reflect.DeepEqual(m1, m2) {
		t.Errorf("\n %v. \n %v", m2, m1)
	}
}

func checkMessageValue(t *testing.T, body []byte, fieldName string, expected string) {
	var m map[string]interface{}
	_ = json.Unmarshal(body, &m)

	fieldValue := m[fieldName]
	if fieldValue != expected {
		t.Errorf("Expected %v. Got %v", expected, fieldValue)
	}
}

func ensureTableExists() {
	if _, err := a.DB.Exec(tableCreationQuery); err != nil {
		log.Fatal(err)
	}
}

func storeRDBMSFunctions() {
	if _, err := a.DB.Exec(storeFunctionsQuery); err != nil {
		log.Fatal(err)
	}
}

func TestMain(m *testing.M) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	ensureTableExists()
	storeRDBMSFunctions()

	code := m.Run()
	os.Exit(code)
}

func TestHealthStatus(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req, _ := http.NewRequest(http.MethodGet, "/health", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkMessageValue(t, response.Body.Bytes(), "status", "OK")
}

func TestReceiveEventWithoutValidHeadersAndAuthorisation(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req, _ := http.NewRequest(http.MethodPost, "/api/v1/streams/test/events", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
}

func TestStatsEventsPerStreamWithValidHeadersValidHeaders(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req, _ := http.NewRequest(http.MethodGet, "/api/v1/stats/events-per-stream", nil)
	req.Header.Add("Content-Type", "application/json; charset=utf-8")
	req.Header.Add("Accept", "application/json; charset=utf-8")
	req.Header.Add("Authorization", "Basic dGVzdDp0ZXN0")
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
}
