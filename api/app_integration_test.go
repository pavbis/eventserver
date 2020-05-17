package api

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
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
	testConsumerId = "2480b859-e08a-4414-9c7d-003bc1a4b555"
	testProducerId = "52a454e8-a111-4e5c-a715-2e46fedd8c47"
	invalidProducerID = "52a454e8-a111-4e5c-a715-2e46fedd8c48"
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

func readFileAndExecuteQuery(filePath string) {
	query := readFileContent(filePath)

	if _, err := a.DB.Exec(string(query)); err != nil {
		log.Fatal(err)
	}
}

func ensureTableExists() {
	readFileAndExecuteQuery("sql/init-table.sql")
}

func storeRDBMSFunctions() {
	readFileAndExecuteQuery("sql/functions.sql")
}

func applyFixtures() {
	readFileAndExecuteQuery("sql/fixtures.sql")
}

func updateEventsDatesToCurrentMonthAndYear() {
	readFileAndExecuteQuery("sql/updateEventsDates.sql")
}

func TestMain(m *testing.M) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	ensureTableExists()
	storeRDBMSFunctions()
	applyFixtures()
	updateEventsDatesToCurrentMonthAndYear()

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

	req := authRequest(http.MethodGet, "/api/v1/stats/events-per-stream", nil)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/stats/events_per_stream/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}


func TestReceiveEventsWithoutQueryParametersValidHeaders(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/streams/mavi/events", nil)
	req.Header.Add("X-Consumer-ID", testConsumerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"limit argument is not valid")
}

func TestReceiveEventsWithoutEventNameQueryParameter(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/streams/mavi/events?limit=10", nil)
	req.Header.Add("X-Consumer-ID", testConsumerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Key: 'receiveEvents.EventName' Error:Field validation for 'EventName' failed on the 'required' tag")
}

func TestReceiveEventsWithValidParameters(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/streams/mavi/events?limit=10&eventName=Snickers", nil)
	req.Header.Add("X-Consumer-ID", testConsumerId)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/receive_events/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}

func TestReceiveEventsWithValidParametersReturnsEmptyResult(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/streams/void/events?limit=10&eventName=Snickers", nil)
	req.Header.Add("X-Consumer-ID", testConsumerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), []byte(""))
}

func TestConsumersForStreamRequestHandler(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/consumers/nicowa", nil)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/consumers_for_stream/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}

func TestReceiveStreamDataRequestHandler(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/stats/stream-data", nil)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/stats/stream_data/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}

func TestEventsForCurrentMonthRequestHandler(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodGet, "/api/v1/stats/events-current-month", nil)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/stats/events_current_month/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}

func TestSearchRequestHandlerWithMissingQueryArgument(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodPost, "/api/v1/search", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Key: 'searchTermRequest.Term' Error:Field validation for 'Term' failed on the 'required' tag")
}

func TestSearchRequestHandlerWithQueryArgument(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodPost, "/api/v1/search?_q=nic", nil)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/search/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}

func TestEventPeriodSearchRequestHandlerWithMissingQueryArgument(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodPost, "/api/v1/event-period-search/nicowa", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"period is not supported or invalid")
}

func TestEventPeriodSearchRequestHandlerWithQueryArgument(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodPost, "/api/v1/event-period-search/maerz?period=6 hour", nil)
	response := executeRequest(req)
	expected := readFileContent("testdata/output/search/event_period/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.Bytes(), expected)
}

func TestReceiveEventRequestHandlerWithoutProducerIdHeader(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Key: 'receiveEventRequest.XProducerId' Error:Field validation for 'XProducerId' failed on the 'required' tag")
}

func TestReceiveEventRequestHandlerWithValidHeadersAndPayload(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	payload := readFileContent("testdata/input/receive_event.json")
	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", bytes.NewBuffer(payload))
	req.Header.Add("X-Producer-ID",  testProducerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusCreated, response.Code)
}

func TestReceiveEventRequestHandlerWithInvalidProducerIDForReservedStream(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	payload := readFileContent("testdata/input/receive_event.json")
	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", bytes.NewBuffer(payload))
	req.Header.Add("X-Producer-ID",  invalidProducerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		fmt.Sprintf("stream is reserved for another producer %s", testProducerId))
}

func authRequest(method string, url string, body io.Reader) * http.Request {
	req, _ := http.NewRequest(method, url, body)
	req.Header.Add("Content-Type", "application/json; charset=utf-8")
	req.Header.Add("Accept", "application/json; charset=utf-8")
	req.Header.Add("Authorization", "Basic dGVzdDp0ZXN0")

	return req
}