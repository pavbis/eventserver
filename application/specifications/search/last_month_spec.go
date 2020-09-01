package search

import (
	"github.com/pavbis/eventserver/application/types"
)

// LastMonthSpec represents last month specification
type LastMonthSpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastMonthSpec) IsSatisfiedBy(p *types.Period) bool {
	return "1month" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastMonthSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '1month'`
}
