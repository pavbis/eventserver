package api

import (
	"testing"
)

func TestReadFileAndExecuteQuery(t *testing.T) {
	// the file contains invalid sql
	filename := "integration_helper_test.go"

	if err := readFileAndExecuteQuery(filename); err == nil {
		t.Fatalf("ExecuteQuery %s: %v", filename, err)
	}
}
