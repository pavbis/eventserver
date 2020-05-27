package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// represents last 2 weeks specification
type LastTwoWeeksSpec struct{}

// provides boolean value if spec satisfies
func (l LastTwoWeeksSpec) IsSatisfiedBy(p *types.Period) bool {
	return "14 day" == p.Value
}

// returns the and expression for sql query
func (l LastTwoWeeksSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '14 day'`
}
