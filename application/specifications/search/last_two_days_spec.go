package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
)

type LastTwoDaysSpec struct{}

func (l LastTwoDaysSpec) IsSatisfiedBy(p *types.Period) bool {
	return "2 day" == p.Value
}

func (l LastTwoDaysSpec) AndExpression() string {
	return `AND "createdAt" >= now() - interval '2 day'`
}
