package repositories

import "bitbucket.org/pbisse/eventserver/application/types"

type MetricsData interface {
	StreamsTotal() (types.StreamCount, error)
	EventsInStreamsWithOwner() ([]*types.StreamTotals, error)
}
