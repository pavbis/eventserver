package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
	"errors"
	"fmt"
)

type postgresWriteEventStore struct {
	sqlManager *sql.DB
}

func NewPostgresWriteEventStore(sqlManger *sql.DB) *postgresWriteEventStore {
	return &postgresWriteEventStore{sqlManager: sqlManger}
}

func (p *postgresWriteEventStore) RecordEvent(producerId types.ProducerId, streamName types.StreamName, event types.Event) string {
	relatedProducerId := p.getProducerIdForStreamName(streamName)

	var err error

	if relatedProducerId.UUID == "" {
		p.saveProducerStreamRelation(producerId, streamName)
		relatedProducerId.UUID = producerId.UUID
	}

	if relatedProducerId.UUID != producerId.UUID {
		err := errors.New(fmt.Sprintf("stream is reserved for another producer %s", relatedProducerId.UUID))
		return err.Error()
	}

	query := "INSERT INTO \"events\" (\"streamName\", \"eventName\", \"sequence\", \"eventId\", \"event\") " +
		"VALUES ($1,$2, (SELECT COALESCE(MAX(\"sequence\"),0) FROM \"events\" " +
		"WHERE \"streamName\" = $3 AND \"eventName\" = $4 LIMIT 1) + 1, $5, $6)"

	_, err = p.sqlManager.Exec(query, streamName.Name, event.EventData.Name, streamName.Name, event.EventData.Name, event.EventId, event.ToJSON())

	if err != nil {
		return err.Error()
	}

	return event.EventId
}

func (p *postgresWriteEventStore) getProducerIdForStreamName(streamName types.StreamName) types.ProducerId {
	var producerId types.ProducerId

	row := p.sqlManager.QueryRow(
		"SELECT \"producerId\" FROM \"producerStreamRelations\" WHERE \"streamName\" = $1 LIMIT 1",
		streamName.Name)

	if err := row.Scan(&producerId.UUID); err != nil {
		return producerId
	}

	return producerId
}

func (p *postgresWriteEventStore) saveProducerStreamRelation(producerId types.ProducerId, streamName types.StreamName) {
	_, _ = p.sqlManager.Query(
		"INSERT INTO \"producerStreamRelations\" (\"producerId\", \"streamName\") VALUES ($1, $2) ON CONFLICT (\"streamName\") DO NOTHING",
		producerId.UUID, streamName.Name)
}

func (p *postgresWriteEventStore) AcknowledgeEvent(consumerId types.ConsumerId, streamName types.StreamName, eventId types.EventId) string {
	eventName, sequence, err := p.getEventNameAndSequence(streamName, eventId)

	if err != nil {
		return err.Error()
	}

	consumerOffset, err := p.getConsumerOffset(consumerId, streamName, eventName)

	if err != nil && !errors.Is(err, sql.ErrNoRows) {
		return err.Error()
	}

	nextOffset := consumerOffset.Increment()

	if nextOffset.Offset != sequence.Pointer {
		err := errors.New(fmt.Sprintf("Consumer offset mismatch: %d->%d", nextOffset.Offset, sequence.Pointer))
		return err.Error()
	}

	query := "INSERT INTO \"consumerOffsets\" (\"consumerId\", \"streamName\", \"eventName\", \"offset\") " +
		"VALUES ($1, $2, $3, $4) ON CONFLICT (\"consumerId\", \"streamName\", \"eventName\") " +
		"DO UPDATE SET \"offset\" = EXCLUDED.\"offset\", \"movedAt\" = now()"

	_, err = p.sqlManager.Exec(query, consumerId.UUID.String(), streamName.Name, eventName.Name, nextOffset.Offset)

	if err != nil {
		return err.Error()
	}

	return fmt.Sprintf("Succesfully moved offset to %d for cosumer id %s", nextOffset.Offset, consumerId.UUID.String())
}

func (p *postgresWriteEventStore) getEventNameAndSequence(streamName types.StreamName, eventId types.EventId) (types.EventName, types.Sequence, error) {
	var eventName types.EventName
	var sequence types.Sequence

	row := p.sqlManager.QueryRow(
		"SELECT \"eventName\", \"sequence\" FROM \"events\" WHERE \"streamName\" = $1 AND \"eventId\" = $2 LIMIT 1",
		streamName.Name, eventId.UUID.String())

	if err := row.Scan(&eventName.Name, &sequence.Pointer); err != nil {
		err := errors.New(fmt.Sprintf("event not found in stream %s/%s", streamName.Name, eventId.UUID.String()))

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
		"SELECT \"offset\" FROM \"consumerOffsets\" WHERE \"consumerId\" = $1 AND \"eventName\" = $2 AND \"streamName\" = $3 LIMIT 1",
		consumerId.UUID.String(), eventName.Name, streamName.Name)

	if err := row.Scan(&consumerOffset.Offset); err != nil {
		return consumerOffset, err
	}

	return consumerOffset, nil
}
