package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type LastMonthSpec struct{}

func (l LastMonthSpec) IsSatisfiedBy(p *types.Period) bool {
	return "1 month" == p.Value
}

func (l LastMonthSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '1 month'`
}
