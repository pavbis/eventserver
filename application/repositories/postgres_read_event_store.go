package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
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

	rows, err := p.sqlManager.Query("SELECT \"eventId\", \"event\" FROM \"events\" "+
		"WHERE \"streamName\" = $1 AND \"eventName\" = $2 AND \"sequence\" > $3 ORDER BY \"sequence\" LIMIT $4",
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
		"SELECT \"offset\" FROM \"consumerOffsets\" WHERE \"consumerId\" = $1 AND \"eventName\" = $2 AND \"streamName\" = $3 LIMIT 1",
		consumerId.UUID.String(), eventName.Name, streamName.Name)

	if err := row.Scan(&consumerOffset.Offset); err != nil {
		return consumerOffset, err
	}

	return consumerOffset, nil
}