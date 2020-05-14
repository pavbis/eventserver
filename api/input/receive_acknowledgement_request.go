package input

import (
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"net/http"
)

type receiveAcknowledgement struct {
	AcceptContentType string    `validate:"required,contentType"`
	ContentType       string    `validate:"required,contentType"`
	ConsumerId        uuid.UUID `validate:"required"`
	StreamName        string    `validate:"required"`
	EventId           uuid.UUID `validate:"required"`
}

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
		AcceptContentType: r.Header.Get("Accept"),
		ContentType:       r.Header.Get("Content-Type"),
		ConsumerId:        consumerId,
		StreamName:        vars["streamName"],
		EventId:           eventId,
	}, nil
}
