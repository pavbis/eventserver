package types

type SelectEventsQuery struct {
	ConsumerId
	StreamName
	EventName
	MaxEventCount
}
