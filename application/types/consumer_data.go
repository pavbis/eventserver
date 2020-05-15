package types

type ConsumerData struct {
	ConsumerId
	EventName
	ConsumerOffset
	OccurredOn
	ConsumedPercentage float64 `json:"consumedPercentage"`
	Behind             int     `json:"behind"`
}
