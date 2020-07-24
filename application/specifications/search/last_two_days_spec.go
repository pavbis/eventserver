package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// LastTwoDaysSpec represents last 2 days specification
type LastTwoDaysSpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastTwoDaysSpec) IsSatisfiedBy(p *types.Period) bool {
	return "2day" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastTwoDaysSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '2day'`
}
