package types

type EventDescription struct {
	EventName
	OccurredOn
	ConsumerIds []string `json:"consumerIds"`
	EventId
}
