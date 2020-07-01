package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"fmt"
	"strings"
)

type postgresWriteEventStore struct {
	sqlManager Executor
}

// NewPostgresWriteEventStore creates the new instance of postgres write event store
func NewPostgresWriteEventStore(sqlManger Executor) *postgresWriteEventStore {
	return &postgresWriteEventStore{sqlManager: sqlManger}
}

func (p *postgresWriteEventStore) RecordEvent(
	producerId types.ProducerId,
	streamName types.StreamName,
	event types.Event) (types.EventId, error) {
	relatedProducerId := p.getProducerIdForStreamName(streamName)

	var eventId types.EventId
	var err error

	if relatedProducerId.UUID == "" {
		p.saveProducerStreamRelation(producerId, streamName)
		relatedProducerId.UUID = producerId.UUID
	}

	if err := p.createSequence(streamName, event.EventData.Name); err != nil {
		return eventId, err
	}

	if relatedProducerId.UUID != producerId.UUID {
		err := fmt.Errorf(fmt.Sprintf("stream is reserved for another producer %s", relatedProducerId.UUID))
		return eventId, err
	}

	query := fmt.Sprintf(`INSERT INTO "events" ("streamName", "eventName", "sequence", "eventId", "event")
			VALUES ($1,$2, nextval('%s'), $3, $4) RETURNING "eventId"`, strings.ToLower(streamName.Name+event.EventData.Name))

	err = p.sqlManager.QueryRow(
		query,
		streamName.Name, event.EventData.Name, event.EventId, event.ToJSON()).Scan(&eventId.UUID)

	if err != nil {
		return eventId, err
	}

	return eventId, nil
}

func (p *postgresWriteEventStore) getProducerIdForStreamName(streamName types.StreamName) types.ProducerId {
	var producerId types.ProducerId

	row := p.sqlManager.QueryRow(
		`SELECT "producerId" FROM "producerStreamRelations" WHERE "streamName" = $1 LIMIT 1`,
		streamName.Name)

	if err := row.Scan(&producerId.UUID); err != nil {
		return producerId
	}

	return producerId
}

func (p *postgresWriteEventStore) createSequence(streamName types.StreamName, eventName string) error {
	var err error
	query := fmt.Sprintf(`CREATE SEQUENCE IF NOT EXISTS %s%s START 1;`, streamName.Name, eventName)

	_, err = p.sqlManager.Exec(query)

	if err != nil {
		return err
	}

	return nil
}

func (p *postgresWriteEventStore) saveProducerStreamRelation(producerId types.ProducerId, streamName types.StreamName) {
	_, _ = p.sqlManager.Exec(
		`INSERT INTO "producerStreamRelations" ("producerId", "streamName") VALUES ($1, $2) ON CONFLICT ("streamName") DO NOTHING`,
		producerId.UUID, streamName.Name)
}

func (p *postgresWriteEventStore) AcknowledgeEvent(consumerId types.ConsumerId, streamName types.StreamName, eventId types.EventId) (string, error) {
	eventName, sequence, err := p.getEventNameAndSequence(streamName, eventId)
	var message string

	if err != nil {
		return message, err
	}

	consumerOffset, err := p.getConsumerOffset(consumerId, streamName, eventName)

	if err != nil {
		return message, err
	}

	nextOffset := consumerOffset.Increment()

	if nextOffset.Offset != sequence.Pointer {
		err := fmt.Errorf(fmt.Sprintf("Consumer offset mismatch: %d->%d", nextOffset.Offset, sequence.Pointer))
		return message, err
	}

	_, err = p.sqlManager.Exec(`INSERT INTO "consumerOffsets" ("consumerId", "streamName", "eventName", "offset") 
				VALUES ($1, $2, $3, $4) ON CONFLICT ("consumerId", "streamName", "eventName") 
				DO UPDATE SET "offset" = EXCLUDED."offset", "movedAt" = now()`,
		consumerId.UUID.String(), streamName.Name, eventName.Name, nextOffset.Offset)

	if err != nil {
		return message, err
	}

	return fmt.Sprintf(
		"Successfully moved offset to %d for cosumer id %s", nextOffset.Offset, consumerId.UUID.String()), nil
}

func (p *postgresWriteEventStore) getEventNameAndSequence(streamName types.StreamName, eventId types.EventId) (types.EventName, types.Sequence, error) {
	var eventName types.EventName
	var sequence types.Sequence

	row := p.sqlManager.QueryRow(
		`SELECT "eventName", "sequence" FROM "events" WHERE "streamName" = $1 AND "eventId" = $2 LIMIT 1`,
		streamName.Name, eventId.UUID.String())

	if err := row.Scan(&eventName.Name, &sequence.Pointer); err != nil {
		err := fmt.Errorf(fmt.Sprintf("event not found in stream %s/%s", streamName.Name, eventId.UUID.String()))

		return eventName, sequence, err
	}

	return eventName, sequence, nil
}

func (p *postgresWriteEventStore) getConsumerOffset(
	consumerId types.ConsumerId,
	streamName types.StreamName,
	eventName types.EventName) (types.ConsumerOffset, error) {
	var consumerOffset types.ConsumerOffset

	row := p.sqlManager.QueryRow(
		`SELECT COALESCE((SELECT "offset" FROM "consumerOffsets" WHERE "consumerId" = $1 AND "eventName" = $2 AND "streamName" = $3 LIMIT 1), 0)`,
		consumerId.UUID.String(), eventName.Name, streamName.Name)

	if err := row.Scan(&consumerOffset.Offset); err != nil {
		return consumerOffset, err
	}

	return consumerOffset, nil
}
