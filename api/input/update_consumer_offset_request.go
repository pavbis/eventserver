package input

import (
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"github.com/pavbis/eventserver/application/types"
	"net/http"
	"strconv"
)

type receiveConsumerOffsetRequest struct {
	types.ConsumerId
	types.EventName
	types.ConsumerOffset
	types.StreamName
}

// NewUpdateConsumerOffsetRequest creates valid update consumer offset input
func NewUpdateConsumerOffsetRequest(r *http.Request) (*receiveConsumerOffsetRequest, error) {
	vars := mux.Vars(r)

	consumerId, err := uuid.Parse(vars["consumerId"])

	if err != nil {
		return nil, ErrConsumerId
	}

	offset, err := strconv.Atoi(vars["offset"])

	if err != nil {
		return nil, ErrConsumerOffset
	}

	return &receiveConsumerOffsetRequest{
		ConsumerId:     types.ConsumerId{UUID: consumerId},
		EventName:      types.EventName{Name: vars["eventName"]},
		ConsumerOffset: types.ConsumerOffset{Offset: offset},
		StreamName:     types.StreamName{Name: vars["streamName"]},
	}, nil
}
