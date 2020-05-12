package input

import (
	"github.com/gorilla/mux"
	"net/http"
)

type receiveEventRequest struct {
	AcceptContentType string `validate:"required,contentType"`
	ContentType       string `validate:"required,contentType"`
	XProducerId       string `validate:"required"`
	StreamName        string `validate:"required"`
}

func NewReceiveEventRequestFromRequest(r *http.Request) *receiveEventRequest {
	vars := mux.Vars(r)

	return &receiveEventRequest{
		AcceptContentType: r.Header.Get("Accept"),
		ContentType:       r.Header.Get("Content-Type"),
		XProducerId:       r.Header.Get("X-Producer-ID"),
		StreamName:        vars["streamName"],
	}
}
