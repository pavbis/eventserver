package repositories

import (
	"testing"
)

func TestEventsInStreamsWithOwnerError(t *testing.T) {
	fakeExecutor := FakeExecutorWithErrors{}
	postgresMetricsStore := NewPostgresMetricsStore(fakeExecutor)

	if _, err := postgresMetricsStore.EventsInStreamsWithOwner(); err == nil {
		t.Errorf("was expecting an error %s, but there was none", err)
	}
}

func TestConsumersInStreamError(t *testing.T) {
	fakeExecutor := FakeExecutorWithErrors{}
	postgresMetricsStore := NewPostgresMetricsStore(fakeExecutor)

	if _, err := postgresMetricsStore.ConsumersInStream(); err == nil {
		t.Errorf("was expecting an error %s, but there was none", err)
	}
}

func TestConsumersOffsetsError(t *testing.T) {
	fakeExecutor := FakeExecutorWithErrors{}
	postgresMetricsStore := NewPostgresMetricsStore(fakeExecutor)

	if _, err := postgresMetricsStore.ConsumersOffsets(); err == nil {
		t.Errorf("was expecting an error %s, but there was none", err)
	}
}
