package api

import (
	"errors"
	"net/http"
)

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
		return errors.New("Content-Type header must be application/json; charset=utf-8")
	}

	accept := r.Header.Get("Accept")
	if accept != forcedContentType {
		return errors.New("accept header must be application/json; charset=utf-8")
	}

	return nil
}
