package types

type ConsumerOffset struct {
	Offset int
}

func (c *ConsumerOffset) Increment () *ConsumerOffset {
	c.Offset++

	return c
}
