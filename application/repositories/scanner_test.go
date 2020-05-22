package repositories

import (
	"bitbucket.org/pbisse/eventserver/api/config"
	"database/sql"
	"testing"
)

func TestScannerError(t *testing.T) {
	dsn := config.NewDsnFromEnv()
	var err error
	var db *sql.DB
	db, err = sql.Open("postgres", dsn)
	if err != nil {
		panic(err)
	}

	err = db.Ping()
	if err != nil {
		panic(err)
	}

	row := db.QueryRow(`SELECT|people|stuff`)

	if _, err = scanOrFail(row); err == nil {
		t.Errorf("was expecting an error %s, but there was none", err)
	}
}
