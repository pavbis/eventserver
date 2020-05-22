package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/specifications/search"
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
	"fmt"
	"strings"
	"time"
)

type postgresReadEventStore struct {
	sqlManager *sql.DB
}

func NewPostgresReadEventStore(sqlManger *sql.DB) *postgresReadEventStore {
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
		`SELECT COALESCE((SELECT "offset" 
				FROM "consumerOffsets" 
				WHERE "consumerId" = $1 
				AND "eventName" = $2 
				AND "streamName" = $3 
				LIMIT 1), 0)`,
		consumerId.UUID.String(), eventName.Name, streamName.Name)

	if err := row.Scan(&consumerOffset.Offset); err != nil {
		return consumerOffset, err
	}

	return consumerOffset, nil
}

func (p *postgresReadEventStore) SelectConsumersForStream(s types.StreamName) ([]byte, error) {
	row := p.sqlManager.QueryRow(
		`SELECT COALESCE(
		(SELECT json_agg(c) FROM (
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
			)
		c),
		'[]'
)`, s.Name)

	return scanOrFail(row)
}

func (p *postgresReadEventStore) SelectEventsForStream(s types.StreamName, spec search.SpecifiesPeriod) ([]*types.EventDescription, error) {
	query := fmt.Sprintf(`SELECT 
				e."eventId",
				e."eventName",
				e."createdAt",
				COALESCE(string_agg(cOF."consumerId", ','), '') as "consumerIds"
			FROM events e
				LEFT JOIN "consumerOffsets" cOF ON e."eventName" = cOF."eventName"
				AND e."streamName" = cOF."streamName"
				AND e."sequence" <= cOF."offset"
			WHERE e."streamName" = '%s' %s
			GROUP BY e."eventId", e."createdAt", e."eventName"
			ORDER BY e."createdAt" DESC`, s.Name, spec.AndExpression())

	rows, err := p.sqlManager.Query(query)

	if err != nil {
		return nil, err
	}

	defer rows.Close()

	eventDescriptions := make([]*types.EventDescription, 0)

	for rows.Next() {
		var occurredOn time.Time
		var consumerIds string
		eventDescription := new(types.EventDescription)

		if err := rows.Scan(&eventDescription.UUID, &eventDescription.EventName.Name, &occurredOn, &consumerIds); err != nil {
			return nil, err
		}
		eventDescription.OccurredOn = types.OccurredOn{Date: occurredOn}
		eventDescription.ConsumerIds = strings.Split(consumerIds, ",")
		eventDescriptions = append(eventDescriptions, eventDescription)
	}

	return eventDescriptions, nil
}
