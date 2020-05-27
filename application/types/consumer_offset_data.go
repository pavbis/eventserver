package types

// ConsumerOffsetData represents consumer calculated data
type ConsumerOffsetData struct {
	StreamName
	ConsumerId
	ConsumerOffset float64
	EventName
}
