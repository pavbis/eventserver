package repositories

import (
	"testing"
)

func TestExec(t *testing.T) {
	fakeExecutor := FakeExecutorWithErrors{}

	if _, err := fakeExecutor.Exec("foo"); err == nil {
		t.Errorf("was expecting an error %s, but there was none", err)
	}
}

func TestQuery(t *testing.T) {
	fakeExecutor := FakeExecutorWithErrors{}

	if _, err := fakeExecutor.Query("foo"); err == nil {
		t.Errorf("was expecting an error %s, but there was none", err)
	}
}
