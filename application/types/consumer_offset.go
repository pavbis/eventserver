package types

type ConsumerOffset struct {
	Offset int `json:"offset"`
}

func (c ConsumerOffset) Increment() ConsumerOffset {
	c.Offset++

	return c
}
