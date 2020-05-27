package search

import "bitbucket.org/pbisse/eventserver/application/types"

type SpecifiesPeriod interface {
	IsSatisfiedBy(period *types.Period) bool
	AndExpression() string
}
