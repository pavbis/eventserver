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

func TestMain(m *testing.M) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	ensureTableExists()

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
