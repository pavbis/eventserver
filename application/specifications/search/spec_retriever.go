package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"errors"
)

type specRetriever struct {
	Specifications []SpecifiesPeriod
}

var ErrInvalidPeriod = errors.New("period is not supported or invalid")

func NewSpecRetriever(specs []SpecifiesPeriod) *specRetriever {
	return &specRetriever{Specifications: specs}
}

func (sl *specRetriever) FindSpec(period *types.Period) (SpecifiesPeriod, error) {
	for _, spec := range sl.Specifications {
		if spec.IsSatisfiedBy(period) {
			return spec, nil
		}
	}

	return nil, ErrInvalidPeriod
}
