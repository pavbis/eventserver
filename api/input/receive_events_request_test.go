package input

import (
	"net/http"
	"reflect"
	"testing"
)

func requestWithoutHeader() *http.Request {
	req, _ := http.NewRequest(http.MethodGet, "/streams/test-stream/events", nil)

	return req
}

func requestWithInvalidHeader() *http.Request {
	req, _ := http.NewRequest(http.MethodGet, "/streams/test-stream/events", nil)
	req.Header.Add("X-Consumer-ID", "invalid-uuid")

	return req
}

func requestWithValidHeaderAndMissingLimit() *http.Request {
	req, _ := http.NewRequest(http.MethodGet, "/streams/test-stream/events", nil)
	req.Header.Add("X-Consumer-ID", "a23a19fe-ea3d-4116-9c9b-0b8c56397750")

	return req
}

func requestWithValidHeaderAndInvalidLimit() *http.Request {
	req, _ := http.NewRequest(http.MethodGet, "/streams/test-stream/events?limit=invalid-int", nil)
	req.Header.Add("X-Consumer-ID", "a23a19fe-ea3d-4116-9c9b-0b8c56397750")

	return req
}

func TestReceiveEventsWithInvalidConsumerIdHeader(t *testing.T) {
	tests := []struct {
		name           string
		request        *http.Request
		expectedResult error
	}{
		{
			name:           "Test with missing consumer id header",
			request:        requestWithoutHeader(),
			expectedResult: ErrConsumerID,
		},
		{
			name:           "Test with invalid consumer id",
			request:        requestWithInvalidHeader(),
			expectedResult: ErrConsumerID,
		},
	}

	for _, test := range tests {
		_, err := NewReceiveEventsFromRequest(test.request)
		if !reflect.DeepEqual(err, test.expectedResult) {
			t.Errorf(
				"for receive events test '%s', got result %d but expected %d",
				test.name,
				err,
				test.expectedResult,
			)
		}
	}
}

func TestReceiveEventsWithLimitQuery(t *testing.T) {
	tests := []struct {
		name           string
		request        *http.Request
		expectedResult error
	}{
		{
			name:           "Test with missing limit query",
			request:        requestWithValidHeaderAndMissingLimit(),
			expectedResult: ErrLimit,
		},
		{
			name:           "Test with invalid limit query",
			request:        requestWithValidHeaderAndInvalidLimit(),
			expectedResult: ErrLimit,
		},
	}

	for _, test := range tests {
		_, err := NewReceiveEventsFromRequest(test.request)
		if !reflect.DeepEqual(err, test.expectedResult) {
			t.Errorf(
				"for receive events test '%s', got result %d but expected %d",
				test.name,
				err,
				test.expectedResult,
			)
		}
	}
}
