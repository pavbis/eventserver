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

	_, err = p.sqlManager.Query(query, streamName.Name, event.EventName, streamName.Name, event.EventName, event.EventId, event.Payload)

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
