package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type LastWeeksSpec struct{}

func (l LastWeeksSpec) IsSatisfiedBy(p *types.Period) bool {
	return "7 day" == p.Value
}

func (l LastWeeksSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '7 day'`
}
