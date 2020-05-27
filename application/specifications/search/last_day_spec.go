package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// LastDaySpec represents last day specification
type LastDaySpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastDaySpec) IsSatisfiedBy(p *types.Period) bool {
	return "24 hour" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastDaySpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '24 hour'`
}
