package input

import (
	"net/http"
	"strconv"

	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"github.com/pavbis/eventserver/application/types"
)

type ReceiveConsumerOffsetRequest struct {
	types.ConsumerID
	types.EventName
	types.ConsumerOffset
	types.StreamName
}

// NewUpdateConsumerOffsetRequest creates valid update consumer offset input
func NewUpdateConsumerOffsetRequest(r *http.Request) (*ReceiveConsumerOffsetRequest, error) {
	vars := mux.Vars(r)

	consumerID, err := uuid.Parse(vars["consumerId"])

	if err != nil {
		return nil, ErrConsumerID
	}

	offset, err := strconv.Atoi(vars["offset"])

	if err != nil {
		return nil, ErrConsumerOffset
	}

	return &ReceiveConsumerOffsetRequest{
		ConsumerID:     types.ConsumerID{UUID: consumerID},
		EventName:      types.EventName{Name: vars["eventName"]},
		ConsumerOffset: types.ConsumerOffset{Offset: offset},
		StreamName:     types.StreamName{Name: vars["streamName"]},
	}, nil
}
