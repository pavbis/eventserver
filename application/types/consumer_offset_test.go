package types

import (
	"testing"
)

func TestConsumerOffset_Increment(t *testing.T) {
	tests := []struct {
		name           string
		input          int
		expectedResult int
	}{
		{
			name:           "Test with 1",
			input:          1,
			expectedResult: 2,
		},
		{
			name:           "Test with 2",
			input:          2,
			expectedResult: 3,
		},
		{
			name:           "Test with 0",
			input:          0,
			expectedResult: 1,
		},
	}

	for _, test := range tests {
		consumerOffset := ConsumerOffset{test.input}
		result := consumerOffset.Increment().Offset

		if result != test.expectedResult {
			t.Errorf(
				"for consumer offset test '%s', got result %d but expected %d",
				test.name,
				result,
				test.expectedResult,
			)
		}
	}
}
