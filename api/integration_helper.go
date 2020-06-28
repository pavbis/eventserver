package api

import (
	"encoding/json"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"reflect"
	"testing"
)

var a ApiServer

var (
	testConsumerId    = "2480b859-e08a-4414-9c7d-003bc1a4b555"
	testProducerId    = "52a454e8-a111-4e5c-a715-2e46fedd8c47"
	invalidProducerID = "52a454e8-a111-4e5c-a715-2e46fedd8c48"
)

func initializeServer() {
	a = ApiServer{}
	a.Initialize()
}

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

func readFileContent(filename string) ([]byte, error) {
	data, err := ioutil.ReadFile(filename)
	if err != nil {
		return nil, err
	}

	return data, nil
}

func checkResponseBody(t *testing.T, body []byte, expected []byte) {
	var m1 []interface{}
	_ = json.Unmarshal(body, &m1)

	var m2 []interface{}
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

func readFileAndExecuteQuery(filePath string) error {
	query, _ := readFileContent(filePath)

	if _, err := a.DB.Exec(string(query)); err != nil {
		return err
	}

	return nil
}

func ensureTableExists() {
	_ = readFileAndExecuteQuery("sql/init-table.sql")
}

func storeRDBMSFunctions() {
	_ = readFileAndExecuteQuery("sql/functions.sql")
}

func applyFixtures() {
	_ = readFileAndExecuteQuery("sql/fixtures.sql")
}

func updateEventsDatesToCurrentMonthAndYear() {
	_ = readFileAndExecuteQuery("sql/updateEventsDates.sql")
}
