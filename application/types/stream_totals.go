package types

// StreamTotals represents stream totals
type StreamTotals struct {
	StreamName
	ProducerId
	EventCount float64
}
