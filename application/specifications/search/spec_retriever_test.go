package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"testing"
)

func TestSpecRetrieverError(t *testing.T) {
	tests := []struct {
		name           string
		input          types.Period
		expectedResult error
	}{
		{
			name:           "Test with invalid period",
			input:          types.Period{Value: "invalid"},
			expectedResult: ErrInvalidPeriod,
		},
		{
			name:           "Test with invalid period",
			input:          types.Period{Value: "2222 nights"},
			expectedResult: ErrInvalidPeriod,
		},
	}

	for _, test := range tests {
		specList := SpecList{}
		specRetriever := NewSpecRetriever(specList.ListAll())
		result, err := specRetriever.FindSpec(&test.input)

		if err != test.expectedResult {
			t.Errorf(
				"for spec retriever test '%s', got result %d but expected %d",
				test.name,
				result,
				test.expectedResult,
			)
		}
	}
}

func TestSpecRetrieverFindSpec(t *testing.T) {
	tests := []struct {
		name           string
		input          types.Period
		expectedResult SpecifiesPeriod
	}{
		{
			name:           "Test with last 24 hours period",
			input:          types.Period{Value: "24 hour"},
			expectedResult: LastDaySpec{},
		},
		{
			name:           "Test with last month period",
			input:          types.Period{Value: "1 month"},
			expectedResult: LastMonthSpec{},
		},
		{
			name:           "Test with last six hours period",
			input:          types.Period{Value: "6 hour"},
			expectedResult: LastSixHoursSpec{},
		},
		{
			name:           "Test with last two days period",
			input:          types.Period{Value: "2 day"},
			expectedResult: LastTwoDaysSpec{},
		},
		{
			name:           "Test with last two weeks period",
			input:          types.Period{Value: "14 day"},
			expectedResult: LastTwoWeeksSpec{},
		},
		{
			name:           "Test with last week period",
			input:          types.Period{Value: "7 day"},
			expectedResult: LastWeeksSpec{},
		},
	}

	for _, test := range tests {
		specList := SpecList{}
		specRetriever := NewSpecRetriever(specList.ListAll())
		result, _ := specRetriever.FindSpec(&test.input)

		if result != test.expectedResult {
			t.Errorf(
				"for spec retriever test '%s', got result %d but expected %d",
				test.name,
				result,
				test.expectedResult,
			)
		}
	}
}
