package repositories

import (
	"database/sql"
	"errors"
	"fmt"

	"github.com/pavbis/eventserver/application/specifications/search"
	"github.com/pavbis/eventserver/application/types"
)

type PostgresReadEventStore struct {
	sqlManager Executor
}

// NewPostgresReadEventStore creates new instance of read event store
func NewPostgresReadEventStore(sqlManger Executor) *PostgresReadEventStore {
	return &PostgresReadEventStore{sqlManager: sqlManger}
}

func (p *PostgresReadEventStore) SelectEvents(q types.SelectEventsQuery) ([]*types.Event, error) {
	rows, err := p.sqlManager.Query(
		`
WITH consumer_offset AS (
    (SELECT COALESCE(
        (SELECT "offset"
         FROM "consumerOffsets"
         WHERE "consumerId" = $1
           AND "eventName" = $2
           AND "streamName" = $3
         LIMIT 1
        ), 0
    ) AS currentConsumerOffset)
)
SELECT "eventId", "event"
FROM "events"
WHERE "streamName" = $4
  AND "eventName" = $5
  AND "sequence" > (SELECT currentConsumerOffset FROM consumer_offset)
ORDER BY "sequence"
LIMIT $6
`,
		q.ConsumerID.UUID.String(), q.EventName.Name, q.StreamName.Name, q.StreamName.Name, q.EventName.Name, q.MaxEventCount.Count)

	if err != nil {
		return nil, err
	}

	defer rows.Close()

	events := make([]*types.Event, 0)

	for rows.Next() {
		event := new(types.Event)
		var eventID string
		if err := rows.Scan(&eventID, &event); err != nil {
			return nil, err
		}

		event.EventID = eventID
		events = append(events, event)
	}

	return events, nil
}

func (p *PostgresReadEventStore) SelectConsumersForStream(s types.StreamName) ([]byte, error) {
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

func (p *PostgresReadEventStore) SelectEventsInStreamForPeriod(s types.StreamName, spec search.SpecifiesPeriod) ([]byte, error) {
	query := fmt.Sprintf(`
WITH found_events AS (
    SELECT
        e."streamName",
        e."eventId",
        e."eventName",
        e."createdAt",
        e."sequence"
    FROM events e
    WHERE e."streamName" = '%s' %s
    LIMIT 1000
)
SELECT COALESCE((SELECT json_agg(q) FROM (
    SELECT
         e."eventId",
         e."eventName",
         e."createdAt",
         COALESCE(ARRAY_REMOVE(ARRAY_AGG(cOF."consumerId"), NULL), '{}') as consumerIds
    FROM found_events e
        LEFT JOIN "consumerOffsets" cOF ON e."eventName" = cOF."eventName"
        AND e."streamName" = cOF."streamName"
        AND e."sequence" <= cOF."offset"
    GROUP BY e."eventId", e."eventName", e."createdAt"
    ORDER BY e."createdAt" DESC
)q), '[]');`, s.Name, spec.AndExpression())

	row := p.sqlManager.QueryRow(query)

	return scanOrFail(row)
}

func (p *PostgresReadEventStore) ReadPayloadForEventID(eventID types.EventID) ([]byte, error) {
	row := p.sqlManager.QueryRow(`SELECT e.event::jsonb as "payLoad"
                    FROM events e
                    WHERE e."eventId" = $1
                    LIMIT 1`, eventID.UUID.String())

	result, err := scanOrFail(row)

	if err != nil && errors.Is(err, sql.ErrNoRows) {
		return nil, errors.New("event id not found")
	}

	if err != nil {
		return nil, err
	}

	return result, nil
}
