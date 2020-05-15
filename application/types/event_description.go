package types

type EventDescription struct {
	EventName
	OccurredOn
	ConsumerIds []ConsumerId
	EventId
}
