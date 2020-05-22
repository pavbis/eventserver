package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type MetricsData interface {
	StreamsTotal() (types.StreamCount, error)
	EventsInStreamsWithOwner() ([]*types.StreamTotals, error)
	ConsumersInStream() ([]*types.ConsumerTotals, error)
	ConsumersOffsets() ([]*types.ConsumerOffsetData, error)
}
