package types

// SelectEventsQuery represents the search query for events
type SelectEventsQuery struct {
	ConsumerId
	StreamName
	EventName
	MaxEventCount
}
