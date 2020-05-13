package input

import (
	"errors"
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"net/http"
	"strconv"
)

type receiveEvents struct {
	AcceptContentType string `validate:"required,contentType"`
	ContentType       string `validate:"required,contentType"`
	ConsumerId        uuid.UUID
	StreamName        string `validate:"required"`
	EventName         string `validate:"required"`
	Limit             int    `validate:"required"`
}

func NewReceiveEventsFromRequest(r *http.Request) (*receiveEvents, error) {
	vars := mux.Vars(r)
	consumerId, err := uuid.Parse(r.Header.Get("X-Consumer-ID"))

	if err != nil {
		return nil, errors.New("missing or invalid consumer id provided")
	}

	params := r.URL.Query()
	limit, err := strconv.Atoi(params.Get("limit"))

	if err != nil {
		return nil, errors.New("limit arguments is not valid")
	}

	return &receiveEvents{
		AcceptContentType: r.Header.Get("Accept"),
		ContentType:       r.Header.Get("Content-Type"),
		ConsumerId:        consumerId,
		StreamName:        vars["streamName"],
		EventName:         params.Get("eventName"),
		Limit:             limit,
	}, nil
}
