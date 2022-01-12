package types

// StreamTotals represents stream totals
type StreamTotals struct {
	StreamName
	ProducerID
	EventCount float64
}
