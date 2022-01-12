package repositories

import (
	"errors"
	"fmt"
	"strings"

	"github.com/pavbis/eventserver/application/types"
)

type PostgresWriteEventStore struct {
	sqlManager Executor
}

// NewPostgresWriteEventStore creates the new instance of postgres write event store
func NewPostgresWriteEventStore(sqlManger Executor) *PostgresWriteEventStore {
	return &PostgresWriteEventStore{sqlManager: sqlManger}
}

func (p *PostgresWriteEventStore) RecordEvent(
	producerID types.ProducerID,
	streamName types.StreamName,
	event types.Event) (types.EventID, error) {
	relatedProducerID := p.getProducerIDForStreamName(streamName)

	var eventID types.EventID
	var err error

	if relatedProducerID.UUID == "" {
		p.saveProducerStreamRelation(producerID, streamName)
		relatedProducerID.UUID = producerID.UUID
	}

	if err := p.createSequence(streamName, event.EventData.Name); err != nil {
		return eventID, err
	}

	if relatedProducerID.UUID != producerID.UUID {
		err := fmt.Errorf(fmt.Sprintf("stream is reserved for another producer %s", relatedProducerID.UUID))
		return eventID, err
	}

	query := fmt.Sprintf(`INSERT INTO "events" ("streamName", "eventName", "sequence", "eventId", "event")
			VALUES ($1,$2, nextval('%s'), $3, $4) RETURNING "eventId"`, strings.ToLower(streamName.Name+event.EventData.Name))

	err = p.sqlManager.QueryRow(
		query,
		streamName.Name, event.EventData.Name, event.EventID, event.ToJSON()).Scan(&eventID.UUID)

	if err != nil {
		return eventID, err
	}

	return eventID, nil
}

func (p *PostgresWriteEventStore) getProducerIDForStreamName(streamName types.StreamName) types.ProducerID {
	var producerID types.ProducerID

	row := p.sqlManager.QueryRow(
		`SELECT "producerId" FROM "producerStreamRelations" WHERE "streamName" = $1 LIMIT 1`,
		streamName.Name)

	if err := row.Scan(&producerID.UUID); err != nil {
		return producerID
	}

	return producerID
}

func (p *PostgresWriteEventStore) createSequence(streamName types.StreamName, eventName string) error {
	var err error
	query := fmt.Sprintf(`CREATE SEQUENCE IF NOT EXISTS %s%s START 1;`, streamName.Name, eventName)

	_, err = p.sqlManager.Exec(query)

	if err != nil {
		return err
	}

	return nil
}

func (p *PostgresWriteEventStore) saveProducerStreamRelation(producerID types.ProducerID, streamName types.StreamName) {
	_, _ = p.sqlManager.Exec(
		`INSERT INTO "producerStreamRelations" ("producerId", "streamName") VALUES ($1, $2) ON CONFLICT ("streamName") DO NOTHING`,
		producerID.UUID, streamName.Name)
}

func (p *PostgresWriteEventStore) AcknowledgeEvent(consumerID types.ConsumerID, streamName types.StreamName, eventID types.EventID) (string, error) {
	eventName, sequence, err := p.getEventNameAndSequence(streamName, eventID)
	var message string

	if err != nil {
		return message, err
	}

	consumerOffset, err := p.getConsumerOffset(consumerID, streamName, eventName)

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
		consumerID.UUID.String(), streamName.Name, eventName.Name, nextOffset.Offset)

	if err != nil {
		return message, err
	}

	return fmt.Sprintf(
		"Successfully moved offset to %d for cosumer id %s", nextOffset.Offset, consumerID.UUID.String()), nil
}

func (p *PostgresWriteEventStore) getEventNameAndSequence(streamName types.StreamName, eventID types.EventID) (types.EventName, types.Sequence, error) {
	var eventName types.EventName
	var sequence types.Sequence

	row := p.sqlManager.QueryRow(
		`SELECT "eventName", "sequence" FROM "events" WHERE "streamName" = $1 AND "eventId" = $2 LIMIT 1`,
		streamName.Name, eventID.UUID.String())

	if err := row.Scan(&eventName.Name, &sequence.Pointer); err != nil {
		err := fmt.Errorf(fmt.Sprintf("event not found in stream %s/%s", streamName.Name, eventID.UUID.String()))

		return eventName, sequence, err
	}

	return eventName, sequence, nil
}

func (p *PostgresWriteEventStore) getConsumerOffset(
	consumerID types.ConsumerID,
	streamName types.StreamName,
	eventName types.EventName) (types.ConsumerOffset, error) {
	var consumerOffset types.ConsumerOffset

	row := p.sqlManager.QueryRow(
		`SELECT COALESCE((SELECT "offset" FROM "consumerOffsets" WHERE "consumerId" = $1 AND "eventName" = $2 AND "streamName" = $3 LIMIT 1), 0)`,
		consumerID.UUID.String(), eventName.Name, streamName.Name)

	if err := row.Scan(&consumerOffset.Offset); err != nil {
		return consumerOffset, err
	}

	return consumerOffset, nil
}

func (p *PostgresWriteEventStore) UpdateConsumerOffset(
	consumerID types.ConsumerID,
	streamName types.StreamName,
	eventName types.EventName,
	newOffset types.ConsumerOffset) error {

	eventCountForConsumerAndStream, err := p.countEventsForConsumerAndStream(streamName, consumerID, eventName)

	if err != nil {
		return err
	}

	if newOffset.Offset > eventCountForConsumerAndStream.Offset {
		return errors.New("offset can not be greater than event count")
	}

	_, err = p.sqlManager.Exec(`UPDATE "consumerOffsets" 
                SET 
                    "offset" = $1,
                    "movedAt" = now()
                WHERE "consumerId" = $2
                AND "eventName" = $3
                AND "streamName" = $4`,
		newOffset.Offset, consumerID.UUID.String(), eventName.Name, streamName.Name)

	if err != nil {
		return err
	}

	return nil
}

func (p *PostgresWriteEventStore) countEventsForConsumerAndStream(
	streamName types.StreamName,
	consumerID types.ConsumerID,
	eventName types.EventName) (types.ConsumerOffset, error) {
	var currentPossibleConsumerOffset types.ConsumerOffset

	row := p.sqlManager.QueryRow(
		`SELECT
                COALESCE(COUNT(e."eventId"), 0)
                FROM events e
                LEFT JOIN "consumerOffsets" cO USING ("eventName", "streamName")
                WHERE e."streamName" = $1
                AND e."eventName" = $2
                AND cO."consumerId" = $3`,
		streamName.Name, eventName.Name, consumerID.UUID.String())

	if err := row.Scan(&currentPossibleConsumerOffset.Offset); err != nil {
		return currentPossibleConsumerOffset, err
	}

	return currentPossibleConsumerOffset, nil
}
