package types

// SearchTerm describes the search term
type SearchTerm struct {
	Term string `validate:"required"`
}
