package input

import (
	"net/http"
)

type SearchTermRequest struct {
	Term string `validate:"required"`
}

// NewSearchTermInputFromRequest create a valid instance of search term
func NewSearchTermInputFromRequest(r *http.Request) *SearchTermRequest {
	searchTerm := r.URL.Query().Get("_q")

	return &SearchTermRequest{Term: searchTerm}
}
