package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// LastWeeksSpec represents last week specification
type LastWeeksSpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastWeeksSpec) IsSatisfiedBy(p *types.Period) bool {
	return "7 day" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastWeeksSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '7 day'`
}
