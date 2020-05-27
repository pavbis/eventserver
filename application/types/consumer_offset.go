package types

// ConsumerOffset represents consumer offset
type ConsumerOffset struct {
	Offset int `json:"offset"`
}

// Increment increments consumer offset
func (c ConsumerOffset) Increment() ConsumerOffset {
	c.Offset++

	return c
}
