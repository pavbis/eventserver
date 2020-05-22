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
	dbUser            = os.Getenv("DB_USER")
	dbPassword        = os.Getenv("DB_PASSWORD")
	dbName            = os.Getenv("DB_NAME")
	dbHost            = os.Getenv("DB_HOST")
	dbPort            = os.Getenv("DB_PORT")
	dbSSLMode         = os.Getenv("DB_SSLMODE")
	testConsumerId    = "2480b859-e08a-4414-9c7d-003bc1a4b555"
	testProducerId    = "52a454e8-a111-4e5c-a715-2e46fedd8c47"
	invalidProducerID = "52a454e8-a111-4e5c-a715-2e46fedd8c48"
)

func initializeApp() {
	a = App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbPort, dbSSLMode)
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
