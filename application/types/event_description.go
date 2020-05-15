package types

type EventDescription struct {
	EventName
	OccurredOn
	ConsumerIds []string
	EventId
}
