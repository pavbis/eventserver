package search

import "github.com/pavbis/eventserver/application/types"

// SpecifiesPeriod is the interface for all specifications
type SpecifiesPeriod interface {
	IsSatisfiedBy(period *types.Period) bool
	AndExpression() string
}
