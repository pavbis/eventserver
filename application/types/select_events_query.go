package types

// SelectEventsQuery represents the search query for events
type SelectEventsQuery struct {
	ConsumerID
	StreamName
	EventName
	MaxEventCount
}
