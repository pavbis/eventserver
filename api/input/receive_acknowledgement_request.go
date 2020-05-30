package input

import (
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"net/http"
)

type receiveAcknowledgement struct {
	ConsumerId uuid.UUID
	StreamName string
	EventId    uuid.UUID
}

// NewReceiveAcknowledgementFromRequest create new valid instance from input data
func NewReceiveAcknowledgementFromRequest(r *http.Request) (*receiveAcknowledgement, error) {
	vars := mux.Vars(r)
	consumerId, err := uuid.Parse(r.Header.Get("X-Consumer-ID"))

	if err != nil {
		return nil, ErrConsumerId
	}

	eventId, err := uuid.Parse(vars["eventId"])

	if err != nil {
		return nil, ErrEventId
	}

	return &receiveAcknowledgement{
		ConsumerId: consumerId,
		StreamName: vars["streamName"],
		EventId:    eventId,
	}, nil
}
