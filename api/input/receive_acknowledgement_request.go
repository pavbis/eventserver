package input

import (
	"net/http"

	"github.com/google/uuid"
	"github.com/gorilla/mux"
)

type ReceiveAcknowledgement struct {
	ConsumerID uuid.UUID
	StreamName string
	EventID    uuid.UUID
}

// NewReceiveAcknowledgementFromRequest create new valid instance from input data
func NewReceiveAcknowledgementFromRequest(r *http.Request) (*ReceiveAcknowledgement, error) {
	vars := mux.Vars(r)
	consumerID, err := uuid.Parse(r.Header.Get("X-Consumer-ID"))

	if err != nil {
		return nil, ErrConsumerID
	}

	eventID, err := uuid.Parse(vars["eventId"])

	if err != nil {
		return nil, ErrEventID
	}

	return &ReceiveAcknowledgement{
		ConsumerID: consumerID,
		StreamName: vars["streamName"],
		EventID:    eventID,
	}, nil
}
