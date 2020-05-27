package types

type ConsumerOffsetData struct {
	StreamName
	ConsumerId
	ConsumerOffset float64
	EventName
}
