package api

import (
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"os"
	"testing"

	"github.com/stretchr/testify/require"
)

var s Server

var (
	testConsumerID    = "2480b859-e08a-4414-9c7d-003bc1a4b555"
	testProducerID    = "52a454e8-a111-4e5c-a715-2e46fedd8c47"
	invalidProducerID = "52a454e8-a111-4e5c-a715-2e46fedd8c48"
)

func initializeServer() {
	s = Server{}
	s.Initialize()
}

func executeRequest(req *http.Request) *httptest.ResponseRecorder {
	rr := httptest.NewRecorder()
	s.router.ServeHTTP(rr, req)

	return rr
}

func checkResponseCode(t *testing.T, expected, actual int) {
	if expected != actual {
		t.Errorf("Expected response code is %d. Got %d", expected, actual)
	}
}

func readFileContent(filename string) ([]byte, error) {
	data, err := os.ReadFile(filename)
	if err != nil {
		return nil, err
	}

	return data, nil
}

// checks response body
func checkResponseBody(t *testing.T, body string, expected string) {
	require.JSONEq(t, body, expected)
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

	if _, err := s.db.Exec(string(query)); err != nil {
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
