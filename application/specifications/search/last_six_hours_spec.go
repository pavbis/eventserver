package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type LastSixHoursSpec struct{}

func (l LastSixHoursSpec) IsSatisfiedBy(p *types.Period) bool {
	return "6 hour" == p.Value
}

func (l LastSixHoursSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '6 hour'`
}
