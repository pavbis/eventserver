package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type LastDaySpec struct{}

func (l LastDaySpec) IsSatisfiedBy(p *types.Period) bool {
	return "24 hour" == p.Value
}

func (l LastDaySpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '24 hour'`
}
