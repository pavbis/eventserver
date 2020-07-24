package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// LastSixHoursSpec represents last 6 hours specification
type LastSixHoursSpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastSixHoursSpec) IsSatisfiedBy(p *types.Period) bool {
	return "6hour" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastSixHoursSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '6hour'`
}
