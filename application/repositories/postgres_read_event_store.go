package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/specifications/search"
	"bitbucket.org/pbisse/eventserver/application/types"
	"fmt"
)

type postgresReadEventStore struct {
	sqlManager Executor
}

// NewPostgresReadEventStore creates new instance of read event store
func NewPostgresReadEventStore(sqlManger Executor) *postgresReadEventStore {
	return &postgresReadEventStore{sqlManager: sqlManger}
}

func (p *postgresReadEventStore) SelectEvents(q types.SelectEventsQuery) ([]*types.Event, error) {
	consumerOffset, err := p.getConsumerOffset(q.ConsumerId, q.StreamName, q.EventName)

	if err != nil {
		return nil, err
	}

	rows, err := p.sqlManager.Query(
		`SELECT "eventId", "event" 
					FROM "events" 
					WHERE "streamName" = $1 
				  	AND "eventName" = $2 
					AND "sequence" > $3 
					ORDER BY "sequence"
					LIMIT $4`,
		q.StreamName.Name, q.EventName.Name, consumerOffset.Offset, q.MaxEventCount.Count)

	if err != nil {
		return nil, err
	}

	defer rows.Close()

	events := make([]*types.Event, 0)

	for rows.Next() {
		event := new(types.Event)
		var eventId string
		if err := rows.Scan(&eventId, &event); err != nil {
			return nil, err
		}

		event.EventId = eventId
		events = append(events, event)
	}

	return events, nil
}

func (p *postgresReadEventStore) getConsumerOffset(
	consumerId types.ConsumerId,
	streamName types.StreamName,
	eventName types.EventName) (types.ConsumerOffset, error) {
	var consumerOffset types.ConsumerOffset

	row := p.sqlManager.QueryRow(
		`
SELECT COALESCE(
	(SELECT "offset" 
		FROM "consumerOffsets" 
		WHERE "consumerId" = $1 
		AND "eventName" = $2 
		AND "streamName" = $3 
		LIMIT 1
	), 0
)
`,
		consumerId.UUID.String(), eventName.Name, streamName.Name)

	if err := row.Scan(&consumerOffset.Offset); err != nil {
		return consumerOffset, err
	}

	return consumerOffset, nil
}

func (p *postgresReadEventStore) SelectConsumersForStream(s types.StreamName) ([]byte, error) {
	row := p.sqlManager.QueryRow(
		`
SELECT COALESCE((SELECT json_agg(c) FROM (
	SELECT
		cOF."consumerId",
		cOF."offset",
		cOF."movedAt",
		e."eventName",
		ROUND(("offset" * 100.0) / COUNT(e."eventId"), 2) AS "consumedPercentage",
		COUNT(e."eventId") - "offset" AS "behind"
	FROM "consumerOffsets" cOF
		INNER JOIN events e USING ("eventName", "streamName")
	WHERE cOF."streamName" = $1
	GROUP BY  e."eventName", cOF."offset", cOF."consumerId", cOF."movedAt"
	)c),'[]')`, s.Name)

	return scanOrFail(row)
}

func (p *postgresReadEventStore) SelectEventsInStreamForPeriod(s types.StreamName, spec search.SpecifiesPeriod) ([]byte, error) {
	query := fmt.Sprintf(`
WITH events_in_stream AS (
    SELECT json_agg(q) FROM (
        SELECT
            e."eventId",
            e."eventName",
            e."createdAt",
            COALESCE(ARRAY_AGG(cOF."consumerId") FILTER (WHERE cOF."consumerId" IS NOT NULL), '{}') as consumerIds
        FROM events e
        LEFT JOIN "consumerOffsets" cOF ON e."eventName" = cOF."eventName"
        AND e."streamName" = cOF."streamName"
        AND e."sequence" <= cOF."offset"
        WHERE e."streamName" = '%s' %s
        GROUP BY e."eventId", e."createdAt", e."eventName"
        ORDER BY e."createdAt" DESC
    )q
)

SELECT COALESCE((SELECT * FROM events_in_stream), '[]');`, s.Name, spec.AndExpression())

	row := p.sqlManager.QueryRow(query)

	return scanOrFail(row)
}
