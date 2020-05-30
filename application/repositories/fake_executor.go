package repositories

import (
	"database/sql"
	"errors"
	"fmt"
)

// FakeExecutorWithErrors simulates the database errors while executing statements
type FakeExecutorWithErrors struct{}

func (f FakeExecutorWithErrors) Exec(query string, args ...interface{}) (sql.Result, error) {
	return nil, errors.New(fmt.Sprintf("exec error while executing %s", query))
}
func (f FakeExecutorWithErrors) Query(query string, args ...interface{}) (*sql.Rows, error) {
	return nil, errors.New(fmt.Sprintf("query error while executing %s", query))
}

func (f FakeExecutorWithErrors) QueryRow(query string, args ...interface{}) *sql.Row {
	return &sql.Row{}
}
