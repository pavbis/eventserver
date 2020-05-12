package types

import "time"

type Event struct {
	EventId      string
	EventName    string
	EventVersion string
	SystemId     string
	SystemName   string
	SystemTime   time.Time
	TriggerType  string
	TriggerName  string
	Payload      string
}
