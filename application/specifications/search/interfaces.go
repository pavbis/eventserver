package search

import "bitbucket.org/pbisse/eventserver/application/types"

// the interface for all specifications
type SpecifiesPeriod interface {
	IsSatisfiedBy(period *types.Period) bool
	AndExpression() string
}
