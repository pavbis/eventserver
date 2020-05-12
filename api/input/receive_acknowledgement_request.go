package input

import (
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"net/http"
)

type receiveAcknowledgement struct {
	AcceptContentType string     `validate:"required,contentType"`
	ContentType       string     `validate:"required,contentType"`
	ConsumerId        uuid.UUID  `validate:"required"`
	StreamName        string     `validate:"required"`
	EventId           uuid.UUID  `validate:"required"`
}

func NewReceiveAcknowledgementFromRequest(r *http.Request) *receiveAcknowledgement {
	vars := mux.Vars(r)

	return &receiveAcknowledgement{
		AcceptContentType: r.Header.Get("Accept"),
		ContentType:       r.Header.Get("Content-Type"),
		ConsumerId:        uuid.MustParse(r.Header.Get("X-Consumer-ID")),
		StreamName:        vars["streamName"],
		EventId:		   uuid.MustParse(vars["eventId"]),
	}
}
