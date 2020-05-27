package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// LastTwoDaysSpec represents last 2 days specification
type LastTwoDaysSpec struct{}

// provides boolean value if spec satisfies
func (l LastTwoDaysSpec) IsSatisfiedBy(p *types.Period) bool {
	return "2 day" == p.Value
}

// returns the and expression for sql query
func (l LastTwoDaysSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '2 day'`
}
