package input

import (
	"net/http"

	"github.com/gorilla/mux"
)

type ConsumerForStreamInput struct {
	StreamName string `validate:"required"`
}

// NewConsumerForStreamInputFromRequest creates valid consumer for stream input
func NewConsumerForStreamInputFromRequest(r *http.Request) *ConsumerForStreamInput {
	vars := mux.Vars(r)

	return &ConsumerForStreamInput{
		StreamName: vars["streamName"],
	}
}
