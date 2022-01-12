package api

import (
	"encoding/base64"
	"net/http"
	"net/http/httptest"
	"os"
	"testing"
)

const (
	expectedContentType = "application/json"
	dummyURL            = "http://www.your-domain.com"
)

func TestBasicAuthMiddlewareWithoutHeader(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}
	req := httptest.NewRequest(http.MethodGet, dummyURL, nil)
	res := httptest.NewRecorder()

	basicAuthMiddleware := basicAuthMiddleware(os.Getenv("AUTH_USER"), os.Getenv("AUTH_PASS"), nextMiddleware)
	basicAuthMiddleware.ServeHTTP(res, req)

	responseCode := res.Code
	expectedResponseCode := http.StatusUnauthorized
	responseBody := res.Body.String()
	expectedBody := http.StatusText(expectedResponseCode)
	contentType := res.Header().Get("Content-Type")

	if expectedContentType != contentType {
		t.Errorf("Expected content type is %s. Got %s", expectedContentType, contentType)
	}

	if responseCode != expectedResponseCode {
		t.Errorf("Expected response code is %d. Got %d", expectedResponseCode, responseCode)
	}

	if responseBody != expectedBody {
		t.Errorf("Expected message is %s. Got %s", expectedBody, responseBody)
	}
}

func TestBasicAuthMiddlewareWithInvalidCredentials(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}

	req := httptest.NewRequest(http.MethodGet, dummyURL, nil)
	req.Header.Add("Authorization", "Basic "+base64.URLEncoding.EncodeToString([]byte(`invalid:invalid`)))
	res := httptest.NewRecorder()

	basicAuthMiddleware := basicAuthMiddleware(os.Getenv("AUTH_USER"), os.Getenv("AUTH_PASS"), nextMiddleware)
	basicAuthMiddleware.ServeHTTP(res, req)

	responseCode := res.Code
	expectedResponseCode := http.StatusUnauthorized
	responseBody := res.Body.String()
	expectedBody := http.StatusText(expectedResponseCode)
	contentType := res.Header().Get("Content-Type")

	if expectedContentType != contentType {
		t.Errorf("Expected content type is %s. Got %s", expectedContentType, contentType)
	}

	if responseCode != expectedResponseCode {
		t.Errorf("Expected response code is %d. Got %d", expectedResponseCode, responseCode)
	}

	if responseBody != expectedBody {
		t.Errorf("Expected message is %s. Got %s", expectedBody, responseBody)
	}
}

func TestBasicAuthMiddlewareWithValidCredentials(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}

	req := httptest.NewRequest(http.MethodGet, dummyURL, nil)
	validAuthString := os.Getenv("AUTH_USER") + ":" + os.Getenv("AUTH_PASS")
	validEncodedAuth := "Basic " + base64.URLEncoding.EncodeToString([]byte(validAuthString))

	req.Header.Add("Authorization", validEncodedAuth)
	res := httptest.NewRecorder()

	basicAuthMiddleware := basicAuthMiddleware(os.Getenv("AUTH_USER"), os.Getenv("AUTH_PASS"), nextMiddleware)
	basicAuthMiddleware.ServeHTTP(res, req)

	responseCode := res.Code
	expectedResponseCode := http.StatusOK

	if responseCode != expectedResponseCode {
		t.Errorf("Expected response code is %d. Got %d", expectedResponseCode, responseCode)
	}
}

func TestContentTypeMiddlewareWithMissingHeaders(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}

	req := httptest.NewRequest(http.MethodGet, dummyURL, nil)
	res := httptest.NewRecorder()

	contentTypeMiddleWare := contentTypeMiddleware(nextMiddleware)
	contentTypeMiddleWare.ServeHTTP(res, req)
	responseCode := res.Code
	expectedResponseCode := http.StatusBadRequest

	if responseCode != expectedResponseCode {
		t.Errorf("Expected response code is %d. Got %d", expectedResponseCode, responseCode)
	}
}

func TestContentTypeMiddlewareWithMissingAcceptHeader(t *testing.T) {
	nextMiddleware := func(w http.ResponseWriter, r *http.Request) {}

	req := httptest.NewRequest(http.MethodGet, dummyURL, nil)
	req.Header.Add("Content-Type", "application/json; charset=utf-8")
	res := httptest.NewRecorder()

	contentTypeMiddleWare := contentTypeMiddleware(nextMiddleware)
	contentTypeMiddleWare.ServeHTTP(res, req)
	responseCode := res.Code
	expectedResponseCode := http.StatusBadRequest

	if responseCode != expectedResponseCode {
		t.Errorf("Expected response code is %d. Got %d", expectedResponseCode, responseCode)
	}
}
