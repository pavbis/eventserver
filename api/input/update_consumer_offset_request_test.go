package input

import (
	"net/http"
	"reflect"
	"testing"
)

func TestUpdateConsumerOffsetRequestErrors(t *testing.T) {
	tests := []struct {
		name           string
		input          http.Request
		expectedResult error
	}{
		{
			name:           "Test with invalid consumer id",
			input:          http.Request{},
			expectedResult: ErrConsumerID,
		},
	}

	for _, test := range tests {
		_, err := NewUpdateConsumerOffsetRequest(&test.input)
		if !reflect.DeepEqual(err, test.expectedResult) {
			t.Errorf(
				"for update consumer offset request test '%s', got result %d but expected %d",
				test.name,
				err,
				test.expectedResult,
			)
		}
	}
}
