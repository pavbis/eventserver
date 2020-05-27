package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

// LastMonthSpec represents last month specification
type LastMonthSpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastMonthSpec) IsSatisfiedBy(p *types.Period) bool {
	return "1 month" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastMonthSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '1 month'`
}
