package api

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"reflect"
	"testing"
)

var a App

var (
	dbUser     = "root"
	dbPassword = "root"
	dbName     = "testdb"
	dbHost     = "localhost"
	dbSSLMode  = "disable"
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

func TestHealthStatus(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbSSLMode)

	req, _ := http.NewRequest(http.MethodGet, "/health", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkMessageValue(t, response.Body.Bytes(), "status", "OK")
}

func TestReceiveEventWithoutValidHeadersAndAuthorisation(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbSSLMode)

	req, _ := http.NewRequest(http.MethodPost, "/api/v1/streams/test/events", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusUnauthorized, response.Code)
}

func TestReceiveEventWithoutValidHeaders(t *testing.T) {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbSSLMode)

	req, _ := http.NewRequest(http.MethodPost, "/api/v1/streams/test/events", nil)
	req.Header.Add("Authorization", "Basic dGVzdDp0ZXN0")
	response := executeRequest(req)

	checkResponseCode(t, http.StatusBadRequest, response.Code)
}
