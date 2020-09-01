package search

import (
	"github.com/pavbis/eventserver/application/types"
)

// LastTwoWeeksSpec represents last 2 weeks specification
type LastTwoWeeksSpec struct{}

// IsSatisfiedBy provides boolean value if spec satisfies
func (l LastTwoWeeksSpec) IsSatisfiedBy(p *types.Period) bool {
	return "14day" == p.Value
}

// AndExpression returns the and expression for sql query
func (l LastTwoWeeksSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '14day'`
}
