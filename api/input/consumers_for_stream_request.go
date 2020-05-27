package input

import (
	"github.com/gorilla/mux"
	"net/http"
)

type consumerForStreamInput struct {
	StreamName string `validate:"required"`
}

// NewConsumerForStreamInputFromRequest creates valid consumer for stream input
func NewConsumerForStreamInputFromRequest(r *http.Request) *consumerForStreamInput {
	vars := mux.Vars(r)

	return &consumerForStreamInput{
		StreamName: vars["streamName"],
	}
}
