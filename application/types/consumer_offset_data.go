package types

// ConsumerOffsetData represents consumer calculated data
type ConsumerOffsetData struct {
	StreamName
	ConsumerID
	ConsumerOffset float64
	EventName
}
