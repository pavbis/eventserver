package input

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"net/http"
)

type readEventPayloadRequest struct {
	types.EventId
}

// NewReadEventPayloadRequest creates valid read event payload input
func NewReadEventPayloadRequest(r *http.Request) (*readEventPayloadRequest, error) {
	vars := mux.Vars(r)

	eventId, err := uuid.Parse(vars["eventId"])

	if err != nil {
		return nil, ErrEventId
	}

	return &readEventPayloadRequest{EventId: types.EventId{UUID: eventId}}, nil
}
