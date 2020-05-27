package api

import (
	"errors"
	"net/http"
)

func basicAuthMiddleware(user, pass string, next http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		if checkBasicAuth(r, user, pass) {
			next(w, r)
			return
		}

		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusUnauthorized)
		_, _ = w.Write([]byte("Unauthorized"))
	}
}

func checkBasicAuth(r *http.Request, user, pass string) bool {
	u, p, ok := r.BasicAuth()
	if !ok {
		return false
	}
	return u == user && p == pass
}

// content type error
var ErrContentType = errors.New("Content-Type header must be application/json; charset=utf-8")

// accept error
var ErrAccept = errors.New("accept header must be application/json; charset=utf-8")

func contentTypeMiddleware(next http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		err := checkHeaders(r)

		if err != nil {
			w.Header().Set("Content-Type", "application/json")
			w.WriteHeader(http.StatusBadRequest)
			_, _ = w.Write([]byte(err.Error()))
			return
		}

		next(w, r)
		return
	}
}

func checkHeaders(r *http.Request) error {
	contentType := r.Header.Get("Content-Type")
	forcedContentType := "application/json; charset=utf-8"

	if contentType != forcedContentType {
		return ErrContentType
	}

	accept := r.Header.Get("Accept")
	if accept != forcedContentType {
		return ErrAccept
	}

	return nil
}
