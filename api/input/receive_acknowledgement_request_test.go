package input

import (
	"errors"
	"net/http"
	"reflect"
	"testing"
)

func TestReceiveAcknowledgementFromRequestErrors(t *testing.T) {
	header := http.Header{}
	header.Add("X-Consumer-ID", "a23a19fe-ea3d-4116-9c9b-0b8c56397750")

	tests := []struct {
		name           string
		input          http.Request
		expectedResult error
	}{
		{
			name:           "Test with invalid consumer id",
			input:          http.Request{},
			expectedResult: errors.New("missing or invalid consumer id provided"),
		},
		{
			name:           "Test with valid consumer id but invalid event id",
			input:          http.Request{Header: header},
			expectedResult: errors.New("missing or invalid event id provided"),
		},
	}

	for _, test := range tests {
		_, err := NewReceiveAcknowledgementFromRequest(&test.input)
		if !reflect.DeepEqual(err, test.expectedResult) {
			t.Errorf(
				"for consumer offset test '%s', got result %d but expected %d",
				test.name,
				err,
				test.expectedResult,
			)
		}
	}
}
