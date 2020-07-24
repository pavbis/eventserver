package search

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"errors"
	"testing"
)

func TestSpecRetrieverError(t *testing.T) {
	tests := []struct {
		name  string
		input types.Period
		error error
	}{
		{
			name:  "Test with invalid period",
			input: types.Period{Value: "invalid"},
			error: ErrInvalidPeriod,
		},
		{
			name:  "Test with invalid period",
			input: types.Period{Value: "2222 nights"},
			error: ErrInvalidPeriod,
		},
	}

	for _, test := range tests {
		specList := SpecList{}
		specRetriever := NewSpecRetriever(specList.ListAll())
		result, err := specRetriever.FindSpec(&test.input)

		if !errors.Is(err, test.error) {
			t.Errorf(
				"for spec retriever test '%s', got result %d but expected %d",
				test.name,
				result,
				test.error,
			)
		}
	}
}

func TestSpecRetrieverFindSpec(t *testing.T) {
	tests := []struct {
		name           string
		input          types.Period
		expectedResult SpecifiesPeriod
		expression     string
	}{
		{
			name:           "Test with last 24 hours period",
			input:          types.Period{Value: "24hour"},
			expectedResult: LastDaySpec{},
			expression:     `AND "createdAt" >= now() - interval '24hour'`,
		},
		{
			name:           "Test with last month period",
			input:          types.Period{Value: "1month"},
			expectedResult: LastMonthSpec{},
			expression:     `AND "createdAt" >= now() - interval '1month'`,
		},
		{
			name:           "Test with last six hours period",
			input:          types.Period{Value: "6hour"},
			expectedResult: LastSixHoursSpec{},
			expression:     `AND "createdAt" >= now() - interval '6hour'`,
		},
		{
			name:           "Test with last two days period",
			input:          types.Period{Value: "2day"},
			expectedResult: LastTwoDaysSpec{},
			expression:     `AND "createdAt" >= now() - interval '2day'`,
		},
		{
			name:           "Test with last two weeks period",
			input:          types.Period{Value: "14day"},
			expectedResult: LastTwoWeeksSpec{},
			expression:     `AND "createdAt" >= now() - interval '14day'`,
		},
		{
			name:           "Test with last week period",
			input:          types.Period{Value: "7day"},
			expectedResult: LastWeeksSpec{},
			expression:     `AND "createdAt" >= now() - interval '7day'`,
		},
	}

	for _, test := range tests {
		specList := SpecList{}
		specRetriever := NewSpecRetriever(specList.ListAll())
		result, _ := specRetriever.FindSpec(&test.input)
		expression := result.AndExpression()

		if result != test.expectedResult {
			t.Errorf(
				"for spec retriever test '%s', got result %d but expected %d",
				test.name,
				result,
				test.expectedResult,
			)
		}

		if expression != test.expression {
			t.Errorf(
				"for spec retriever expression test '%s', got result %d but expected %d",
				test.name,
				result,
				test.expectedResult,
			)
		}
	}
}
