package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type postgresMetricsStore struct {
	sqlManager Executor
}

// NewPostgresMetricsStore creates the new instance of postgres metrics store
func NewPostgresMetricsStore(sqlManger Executor) *postgresMetricsStore {
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
FROM events e
    LEFT JOIN "producerStreamRelations" pSR on e."streamName" = pSR."streamName"
GROUP BY pSR."streamName", pSR."producerId"`)

	if err != nil {
		return nil, err
	}

	defer rows.Close()

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

func (p *postgresMetricsStore) ConsumersInStream() ([]*types.ConsumerTotals, error) {
	rows, err := p.sqlManager.Query(`
SELECT
	cOF."streamName",
	COALESCE(COUNT(DISTINCT cOF."consumerId"), 0) as "countConsumer"
FROM "consumerOffsets" cOF
GROUP BY cOF."streamName"
`)

	if err != nil {
		return nil, err
	}

	defer rows.Close()

	var consumerTotals = make([]*types.ConsumerTotals, 0)

	for rows.Next() {
		consumerTotal := new(types.ConsumerTotals)
		if err := rows.Scan(&consumerTotal.StreamName.Name, &consumerTotal.ConsumerCount); err != nil {
			return nil, err
		}

		consumerTotals = append(consumerTotals, consumerTotal)
	}

	return consumerTotals, nil
}

func (p *postgresMetricsStore) ConsumersOffsets() ([]*types.ConsumerOffsetData, error) {
	rows, err := p.sqlManager.Query(`
SELECT
	cOF."consumerId",
	cOF."streamName",
	cOF."offset",
	cOF."eventName"
FROM "consumerOffsets" cOF 
ORDER BY "streamName"
`)

	if err != nil {
		return nil, err
	}

	defer rows.Close()

	var consumerOffsetData = make([]*types.ConsumerOffsetData, 0)

	for rows.Next() {
		consumer := new(types.ConsumerOffsetData)
		if err := rows.Scan(&consumer.ConsumerId.UUID, &consumer.StreamName.Name, &consumer.ConsumerOffset, &consumer.EventName.Name); err != nil {
			return nil, err
		}

		consumerOffsetData = append(consumerOffsetData, consumer)
	}

	return consumerOffsetData, nil
}
