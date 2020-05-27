package input

import (
	"net/http"
)

type searchTermRequest struct {
	Term string `validate:"required"`
}

// NewSearchTermInputFromRequest create a valid instance of search term
func NewSearchTermInputFromRequest(r *http.Request) *searchTermRequest {
	searchTerm := r.URL.Query().Get("_q")

	return &searchTermRequest{Term: searchTerm}
}
