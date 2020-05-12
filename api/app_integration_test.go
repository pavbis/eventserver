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
	a.Initialize()

	req, _ := http.NewRequest(http.MethodGet, "/health", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusOK, response.Code)
	checkMessageValue(t, response.Body.Bytes(), "status", "OK")
}

func TestCalculateWithEmptyBodyAndInvalidMethod(t *testing.T) {
	a = App{}
	a.Initialize()

	req, _ := http.NewRequest(http.MethodPost, "/api/v1/streams/test/events", nil)
	response := executeRequest(req)

	checkResponseCode(t, http.StatusMethodNotAllowed, response.Code)
}
