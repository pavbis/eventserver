package input

import (
	"github.com/gorilla/mux"
	"net/http"
)

type receiveEventRequest struct {
	XProducerId string `validate:"required"`
	StreamName  string `validate:"required"`
}

// creates valid receive event input
func NewReceiveEventRequestFromRequest(r *http.Request) *receiveEventRequest {
	vars := mux.Vars(r)

	return &receiveEventRequest{
		XProducerId: r.Header.Get("X-Producer-ID"),
		StreamName:  vars["streamName"],
	}
}
