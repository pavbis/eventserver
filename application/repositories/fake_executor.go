package repositories

import (
	"database/sql"
	"fmt"
)

// FakeExecutorWithErrors simulates the database errors while executing statements
type FakeExecutorWithErrors struct{}

// Exec simulates DB error handling while calling Exec
func (f FakeExecutorWithErrors) Exec(query string, args ...interface{}) (sql.Result, error) {
	return nil, fmt.Errorf(fmt.Sprintf("exec error while executing %s", query))
}

// Query simulates DB error handling while calling Query
func (f FakeExecutorWithErrors) Query(query string, args ...interface{}) (*sql.Rows, error) {
	return nil, fmt.Errorf(fmt.Sprintf("query error while executing %s", query))
}

// QueryRow simulates DB handling while calling QueryRow
func (f FakeExecutorWithErrors) QueryRow(query string, args ...interface{}) *sql.Row {
	return &sql.Row{}
}
