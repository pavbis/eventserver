package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
)

type postgresMetricsStore struct {
	sqlManager *sql.DB
}

func NewPostgresMetricsStore(sqlManger *sql.DB) *postgresMetricsStore {
	return &postgresMetricsStore{sqlManager: sqlManger}
}

func (p *postgresMetricsStore) StreamsTotal() (types.StreamCount, error) {
	var streamCount types.StreamCount

	row := p.sqlManager.QueryRow(
		`SELECT COALESCE(COUNT(pSR."producerId"), 0) as "streamCount"
                FROM "producerStreamRelations" pSR`)

	if err := row.Scan(&streamCount.Value); err != nil {
		return streamCount, err
	}

	return streamCount, nil
}

func (p *postgresMetricsStore) EventsInStreamsWithOwner() ([]*types.StreamTotals, error) {
	rows, err := p.sqlManager.Query(`SELECT
                    pSR."streamName",
                    pSR."producerId",
                    COALESCE(COUNT(e."eventId"), 0) as "eventCount"
                FROM "producerStreamRelations" pSR
                    LEFT JOIN events e USING ("streamName")
                GROUP BY pSR."streamName", pSR."producerId"`)

	if err != nil {
		return nil, err
	}

	var streamTotals = make([]*types.StreamTotals, 0)

	for rows.Next() {
		streamTotal := new(types.StreamTotals)
		if err := rows.Scan(&streamTotal.StreamName.Name, &streamTotal.ProducerId.UUID, &streamTotal.EventCount); err != nil {
			return nil, err
		}

		streamTotals = append(streamTotals, streamTotal)
	}

	return streamTotals, nil
}
