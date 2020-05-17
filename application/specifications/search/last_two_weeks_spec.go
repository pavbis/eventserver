package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type LastTwoWeeksSpec struct{}

func (l LastTwoWeeksSpec) IsSatisfiedBy(p *types.Period) bool {
	return "14 day" == p.Value
}

func (l LastTwoWeeksSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '14 day'`
}
