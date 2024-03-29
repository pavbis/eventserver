package api

import (
	"bytes"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/http/httptest"
	"os"
	"testing"
)

func TestMain(m *testing.M) {
	initializeServer()
	ensureTableExists()
	storeRDBMSFunctions()
	applyFixtures()
	updateEventsDatesToCurrentMonthAndYear()

	code := m.Run()
	os.Exit(code)
}

func TestHealthStatus(t *testing.T) {
	req, _ := http.NewRequest(http.MethodGet, "/api/v1/health", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkMessageValue(t, response.Body.Bytes(), "status", "OK")
}

func TestReceiveEventWithoutValidHeadersAndAuthorisation(t *testing.T) {
	req, _ := http.NewRequest(http.MethodPost, "/api/v1/streams/test/events", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
}

func TestStatsEventsPerStreamWithValidHeadersValidHeaders(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/stats/events-per-stream", nil)
	response := executeRequest(req)
	expected, _ := readFileContent("testdata/output/stats/events_per_stream/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), string(expected[:]))
}

func TestReceiveEventsWithoutQueryParametersValidHeaders(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/streams/mavi/events", nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"limit argument is not valid")
}

func TestReceiveEventsWithoutEventNameQueryParameter(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/streams/mavi/events?limit=10", nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Key: 'ReceiveEvents.EventName' Error:Field validation for 'EventName' failed on the 'required' tag")
}

func TestReceiveEventsWithValidParameters(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/streams/mavi/events?limit=10&eventName=Snickers", nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)
	expected, _ := readFileContent("testdata/output/receive_events/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), string(expected[:]))
}

func TestReceiveEventsWithValidParametersReturnsEmptyResult(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/streams/void/events?limit=10&eventName=Snickers", nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), "[]")
}

func TestConsumersForStreamRequestHandler(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/consumers/nicowa", nil)
	response := executeRequest(req)
	expected, _ := readFileContent("testdata/output/consumers_for_stream/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), string(expected[:]))
}

func TestReceiveStreamDataRequestHandler(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/stats/stream-data", nil)
	response := executeRequest(req)
	expected, _ := readFileContent("testdata/output/stats/stream_data/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), string(expected[:]))
}

func TestEventsForCurrentMonthRequestHandler(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/stats/events-current-month", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
}

func TestSearchRequestHandlerWithMissingQueryArgument(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/search", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Key: 'SearchTermRequest.Term' Error:Field validation for 'Term' failed on the 'required' tag")
}

func TestSearchRequestHandlerWithQueryArgument(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/search?_q=nic", nil)
	response := executeRequest(req)
	expected, _ := readFileContent("testdata/output/search/valid_response.json")

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), string(expected[:]))
}

func TestEventPeriodSearchRequestHandlerWithMissingQueryArgument(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/event-period-search/nicowa", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"period is not supported or invalid")
}

func TestEventPeriodSearchRequestHandlerWithQueryArgument(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/event-period-search/maerz?period=6hour", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
}

func TestReceiveEventRequestHandlerWithoutProducerIdHeader(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Key: 'ReceiveEventRequest.XProducerID' Error:Field validation for 'XProducerID' failed on the 'required' tag")
}

func TestReceiveEventRequestHandlerWithValidHeadersAndPayload(t *testing.T) {
	payload, _ := readFileContent("testdata/input/receive_event.json")
	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", bytes.NewBuffer(payload))
	req.Header.Add("X-Producer-ID", testProducerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusCreated, response.Code)
}

func TestReceiveEventRequestHandlerWithInvalidProducerIDForReservedStream(t *testing.T) {
	payload, _ := readFileContent("testdata/input/receive_event.json")
	req := authRequest(http.MethodPost, "/api/v1/streams/integration/events", bytes.NewBuffer(payload))
	req.Header.Add("X-Producer-ID", invalidProducerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		fmt.Sprintf("stream is reserved for another producer %s", testProducerID))
}

func TestReceiveAcknowledgementRequestHandlerWithMissingConsumerId(t *testing.T) {
	receiveEventReq := authRequest(http.MethodPost, "/api/v1/streams/integration/events/2480b859-e08a-4414-9c7d-003bc1a4b555", nil)
	response := executeRequest(receiveEventReq)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"missing or invalid consumer id provided")
}

func TestReceiveAcknowledgementRequestHandlerWithConsumerId(t *testing.T) {
	payload, _ := readFileContent("testdata/input/receive_event.json")
	receiveEventReq := authRequest(http.MethodPost, "/api/v1/streams/integrationTwo/events", bytes.NewBuffer(payload))
	receiveEventReq.Header.Add("X-Producer-ID", testProducerID)
	receiveEventResponse := executeRequest(receiveEventReq)

	var m map[string]interface{}
	_ = json.Unmarshal(receiveEventResponse.Body.Bytes(), &m)
	// grab the created event id
	eventID := m["uuid"]

	req := authRequest(http.MethodPost, fmt.Sprintf("/api/v1/streams/integrationTwo/events/%s", eventID), nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)

	checkResponseBody(t, response.Body.String(), fmt.Sprintf(`"Successfully moved offset to 1 for cosumer id %s"`, testConsumerID))
}

func TestReceiveAcknowledgementRequestHandlerWithNotExistentEvent(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/streams/integrationTwo/events/ef452ece-667b-4af3-a09b-8c1a692d818d", nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"event not found in stream integrationTwo/ef452ece-667b-4af3-a09b-8c1a692d818d")
}

func TestReceiveAcknowledgementRequestHandlerConsumerOffsetMismatch(t *testing.T) {
	payload, _ := readFileContent("testdata/input/receive_event.json")
	receiveFirstEventReq := authRequest(http.MethodPost, "/api/v1/streams/integrationThree/events", bytes.NewBuffer(payload))
	receiveFirstEventReq.Header.Add("X-Producer-ID", testProducerID)
	rr := httptest.NewRecorder()
	s.router.ServeHTTP(rr, receiveFirstEventReq)

	payloadTwo, _ := readFileContent("testdata/input/receive_event.json")
	receiveSecondEventReq := authRequest(http.MethodPost, "/api/v1/streams/integrationThree/events", bytes.NewBuffer(payloadTwo))
	receiveSecondEventReq.Header.Add("X-Producer-ID", testProducerID)
	receiveEventResponse := executeRequest(receiveSecondEventReq)

	var m map[string]interface{}
	_ = json.Unmarshal(receiveEventResponse.Body.Bytes(), &m)
	// grab the created event id
	eventID := m["uuid"]

	req := authRequest(http.MethodPost, fmt.Sprintf("/api/v1/streams/integrationThree/events/%s", eventID), nil)
	req.Header.Add("X-Consumer-ID", testConsumerID)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"Consumer offset mismatch: 1->2")
}

func TestMetricsEndPoint(t *testing.T) {
	req, _ := http.NewRequest(http.MethodPost, "/api/v1/metrics", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
}

func TestUpdateConsumerOffsetWithInvalidOffset(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/test-stream/2480b859-e08a-4414-9c7d-003bc1a4b555/connectSocket/change/invalidInt", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"offset argument is not valid")
}

func TestUpdateConsumerOffsetWithValidOffsetAndNotExistentStream(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/missing-stream/2480b859-e08a-4414-9c7d-003bc1a4b555/connectSocket/change/2", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusInternalServerError, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"offset can not be greater than event count")
}

func TestUpdateConsumerOffsetWithValidParameters(t *testing.T) {
	req := authRequest(http.MethodPost, "/api/v1/sandwich/2480b859-e08a-4414-9c7d-003bc1a4b221/Snickers/change/2", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkResponseBody(t, response.Body.String(), `"successfully updated offset to 2 for consumer 2480b859-e08a-4414-9c7d-003bc1a4b221"`)
}

func TestGetEventPayloadWithInvalidEventIdProvided(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/events/invalid-uuid/payload", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"missing or invalid event id provided")
}

func TestGetEventPayloadWithNotExistentUuid(t *testing.T) {
	req := authRequest(http.MethodGet, "/api/v1/events/fa77e595-f86d-42c3-959f-cfb3e9c8830d/payload", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusNotFound, response.Code)
	checkMessageValue(t,
		response.Body.Bytes(),
		"error",
		"event id not found")
}

func TestGetEventPayloadWithExistentUuid(t *testing.T) {
	payloadTwo, _ := readFileContent("testdata/input/receive_event.json")
	receiveSecondEventReq := authRequest(http.MethodPost, "/api/v1/streams/integrationThree/events", bytes.NewBuffer(payloadTwo))
	receiveSecondEventReq.Header.Add("X-Producer-ID", testProducerID)
	receiveEventResponse := executeRequest(receiveSecondEventReq)

	var m map[string]interface{}
	_ = json.Unmarshal(receiveEventResponse.Body.Bytes(), &m)
	// grab the created event id
	eventID := m["uuid"]

	req := authRequest(http.MethodGet, fmt.Sprintf("/api/v1/events/%s/payload", eventID), nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
}

func authRequest(method string, url string, body io.Reader) *http.Request {
	req, _ := http.NewRequest(method, url, body)
	req.Header.Add("Content-Type", "application/json; charset=utf-8")
	req.Header.Add("Accept", "application/json; charset=utf-8")
	req.Header.Add("Authorization", basicAuthValue())

	return req
}

func basicAuthValue() string {
	auth := os.Getenv("AUTH_USER") + ":" + os.Getenv("AUTH_PASS")
	return basicAuth + base64.URLEncoding.EncodeToString([]byte(auth))
}
