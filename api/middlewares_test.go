package api

import (
	"encoding/base64"
	"net/http"
	"net/http/httptest"
	"os"
	"testing"
)

func TestBasicAuthMiddlewareWithoutHeader(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}
	req := httptest.NewRequest(http.MethodGet, "http://www.your-domain.com", nil)
	res := httptest.NewRecorder()

	basicAuthMiddleware := basicAuthMiddleware(os.Getenv("AUTH_USER"), os.Getenv("AUTH_PASS"), nextMiddleware)
	basicAuthMiddleware.ServeHTTP(res, req)

	responseCode := res.Code
	responseBody := res.Body.String()
	expectedBody := http.StatusText(http.StatusUnauthorized)

	if responseCode != http.StatusUnauthorized {
		t.Errorf("Expected response code is %d. Got %d", http.StatusUnauthorized, responseCode)
	}

	if responseBody != expectedBody {
		t.Errorf("Expected message is %s. Got %s", expectedBody, responseBody)
	}
}

func TestBasicAuthMiddlewareWithInvalidCredentials(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}

	req := httptest.NewRequest(http.MethodGet, "http://www.your-domain.com", nil)
	req.Header.Add("Authorization", "Basic "+base64.URLEncoding.EncodeToString([]byte(`invalid:invalid`)))
	res := httptest.NewRecorder()

	basicAuthMiddleware := basicAuthMiddleware(os.Getenv("AUTH_USER"), os.Getenv("AUTH_PASS"), nextMiddleware)
	basicAuthMiddleware.ServeHTTP(res, req)

	responseCode := res.Code
	responseBody := res.Body.String()
	expectedBody := http.StatusText(http.StatusUnauthorized)

	if responseCode != http.StatusUnauthorized {
		t.Errorf("Expected response code is %d. Got %d", http.StatusUnauthorized, responseCode)
	}

	if responseBody != expectedBody {
		t.Errorf("Expected message is %s. Got %s", expectedBody, responseBody)
	}
}

func TestBasicAuthMiddlewareWithValidCredentials(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}

	req := httptest.NewRequest(http.MethodGet, "http://www.your-domain.com", nil)
	validAuthString := os.Getenv("AUTH_USER") +":"+ os.Getenv("AUTH_PASS")
	validEncodedAuth := "Basic " + base64.URLEncoding.EncodeToString([]byte(validAuthString))

	req.Header.Add("Authorization", validEncodedAuth)
	res := httptest.NewRecorder()

	basicAuthMiddleware := basicAuthMiddleware(os.Getenv("AUTH_USER"), os.Getenv("AUTH_PASS"), nextMiddleware)
	basicAuthMiddleware.ServeHTTP(res, req)

	responseCode := res.Code

	if responseCode != http.StatusOK {
		t.Errorf("Expected response code is %d. Got %d", http.StatusOK, responseCode)
	}
}
