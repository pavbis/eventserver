package input

import (
	"net/http"
	"strconv"

	"github.com/google/uuid"
	"github.com/gorilla/mux"
)

type ReceiveEvents struct {
	ConsumerID uuid.UUID
	StreamName string `validate:"required"`
	EventName  string `validate:"required"`
	Limit      int    `validate:"required"`
}

// NewReceiveEventsFromRequest creates valid receive events input
func NewReceiveEventsFromRequest(r *http.Request) (*ReceiveEvents, error) {
	vars := mux.Vars(r)
	consumerID, err := uuid.Parse(r.Header.Get("X-Consumer-ID"))

	if err != nil {
		return nil, ErrConsumerID
	}

	params := r.URL.Query()
	limit, err := strconv.Atoi(params.Get("limit"))

	if err != nil {
		return nil, ErrLimit
	}

	return &ReceiveEvents{
		ConsumerID: consumerID,
		StreamName: vars["streamName"],
		EventName:  params.Get("eventName"),
		Limit:      limit,
	}, nil
}
