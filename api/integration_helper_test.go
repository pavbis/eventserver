package api

import (
	"os"
	"testing"
)

func TestReadFile(t *testing.T) {
	filename := "rumpelstilzchen"
	contents, err := readFileContent(filename)
	if err == nil {
		t.Fatalf("ReadFile %s: error expected, none found", filename)
	}

	filename = "integration_helper_test.go"
	contents, err = readFileContent(filename)
	if err != nil {
		t.Fatalf("ReadFile %s: %v", filename, err)
	}

	size := int64(len(contents))

	dir, err := os.Stat(filename)
	if err != nil {
		t.Fatalf("Stat %q (looking for size %d): %s", filename, size, err)
	}
	if dir.Size() != size {
		t.Errorf("Stat %q: size %d want %d", filename, dir.Size(), size)
	}
}

func TestReadFileAndExecuteQuery(t *testing.T) {
	// the file contains invalid sql
	filename := "integration_helper_test.go"

	if err := readFileAndExecuteQuery(filename); err == nil {
		t.Fatalf("ExecuteQuery %s: %v", filename, err)
	}
}
