package api

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/http/httptest"
	"os"
	"testing"
)

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
	req.Header.Add("X-Producer-ID", testProducerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusCreated, response.Code)
}

func TestReceiveEventRequestHandlerWithInvalidProducerIDForReservedStream(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	payload := readFileContent("testdata/input/receive_event.json")
	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", bytes.NewBuffer(payload))
	req.Header.Add("X-Producer-ID", invalidProducerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		fmt.Sprintf("stream is reserved for another producer %s", testProducerId))
}

func TestReceiveAcknowledgementRequestHandlerWithMissingConsumerId(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	receiveEventReq := authRequest(http.MethodPost, "/api/v1/streams/integration/events/2480b859-e08a-4414-9c7d-003bc1a4b555", nil)
	response := executeRequest(receiveEventReq)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"missing or invalid consumer id provided")
}

func TestReceiveAcknowledgementRequestHandlerWithConsumerId(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	payload := readFileContent("testdata/input/receive_event.json")
	receiveEventReq := authRequest(http.MethodPost, "/api/v1/streams/integration-two/events", bytes.NewBuffer(payload))
	receiveEventReq.Header.Add("X-Producer-ID", testProducerId)
	receiveEventResponse := executeRequest(receiveEventReq)

	var m map[string]interface{}
	_ = json.Unmarshal(receiveEventResponse.Body.Bytes(), &m)
	// grab the created event id
	eventId := m["uuid"]

	req := authRequest(http.MethodPost, fmt.Sprintf("/api/v1/streams/integration-two/events/%s", eventId), nil)
	req.Header.Add("X-Consumer-ID", testConsumerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	expected := bytes.NewBufferString(fmt.Sprintf("Succesfully moved offset to 1 for cosumer id %s", testConsumerId))
	checkResponseBody(t, response.Body.Bytes(), expected.Bytes())
}

func TestReceiveAcknowledgementRequestHandlerConsumerOffsetMismatch(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)

	payload := readFileContent("testdata/input/receive_event.json")
	receiveFirstEventReq := authRequest(http.MethodPost, "/api/v1/streams/integration-three/events", bytes.NewBuffer(payload))
	receiveFirstEventReq.Header.Add("X-Producer-ID", testProducerId)
	rr := httptest.NewRecorder()
	a.Router.ServeHTTP(rr, receiveFirstEventReq)

	payloadTwo := readFileContent("testdata/input/receive_event.json")
	receiveSecondEventReq := authRequest(http.MethodPost, "/api/v1/streams/integration-three/events", bytes.NewBuffer(payloadTwo))
	receiveSecondEventReq.Header.Add("X-Producer-ID", testProducerId)
	receiveEventResponse := executeRequest(receiveSecondEventReq)

	var m map[string]interface{}
	_ = json.Unmarshal(receiveEventResponse.Body.Bytes(), &m)
	// grab the created event id
	eventId := m["uuid"]

	req := authRequest(http.MethodPost, fmt.Sprintf("/api/v1/streams/integration-three/events/%s", eventId), nil)
	req.Header.Add("X-Consumer-ID", testConsumerId)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Consumer offset mismatch: 1->2")
}

func authRequest(method string, url string, body io.Reader) *http.Request {
	req, _ := http.NewRequest(method, url, body)
	req.Header.Add("Content-Type", "application/json; charset=utf-8")
	req.Header.Add("Accept", "application/json; charset=utf-8")
	req.Header.Add("Authorization", "Basic dGVzdDp0ZXN0")

	return req
}
