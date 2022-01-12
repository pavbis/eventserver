package search

import (
	"errors"

	"github.com/pavbis/eventserver/application/types"
)

type SpecRetriever struct {
	Specifications []SpecifiesPeriod
}

// ErrInvalidPeriod the invalid period error
var ErrInvalidPeriod = errors.New("period is not supported or invalid")

// NewSpecRetriever creates new instance of spec retriever
func NewSpecRetriever(specs []SpecifiesPeriod) *SpecRetriever {
	return &SpecRetriever{Specifications: specs}
}

// FindSpec finds the specification or returns the ErrInvalidPeriod
func (sl *SpecRetriever) FindSpec(period *types.Period) (SpecifiesPeriod, error) {
	for _, spec := range sl.Specifications {
		if spec.IsSatisfiedBy(period) {
			return spec, nil
		}
	}

	return nil, ErrInvalidPeriod
}
