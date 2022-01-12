package input

import (
	"net/http"

	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"github.com/pavbis/eventserver/application/types"
)

type ReadEventPayloadRequest struct {
	types.EventID
}

// NewReadEventPayloadRequest creates valid read event payload input
func NewReadEventPayloadRequest(r *http.Request) (*ReadEventPayloadRequest, error) {
	vars := mux.Vars(r)

	eventID, err := uuid.Parse(vars["eventId"])

	if err != nil {
		return nil, ErrEventID
	}

	return &ReadEventPayloadRequest{EventID: types.EventID{UUID: eventID}}, nil
}
