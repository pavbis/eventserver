package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
)

type MetricsData interface {
	StreamsTotal() (types.StreamCount, error)
	EventsInStreamsWithOwner() ([]*types.StreamTotals, error)
	ConsumersInStream() ([]*types.ConsumerTotals, error)
	ConsumersOffsets() ([]*types.ConsumerOffsetData, error)
}

type Executor interface {
	Exec(query string, args ...interface{}) (sql.Result, error)
	Query(query string, args ...interface{}) (*sql.Rows, error)
	QueryRow(query string, args ...interface{}) *sql.Row
}
