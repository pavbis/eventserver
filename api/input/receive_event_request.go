package input

import (
	"net/http"

	"github.com/gorilla/mux"
)

type ReceiveEventRequest struct {
	XProducerID string `validate:"required"`
	StreamName  string `validate:"required"`
}

// NewReceiveEventRequestFromRequest creates valid receive event input
func NewReceiveEventRequestFromRequest(r *http.Request) *ReceiveEventRequest {
	vars := mux.Vars(r)

	return &ReceiveEventRequest{
		XProducerID: r.Header.Get("X-Producer-ID"),
		StreamName:  vars["streamName"],
	}
}
