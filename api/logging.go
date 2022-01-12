package api

import (
	"io"
	"net/http"

	"github.com/gorilla/handlers"
)

func (s *Server) createLoggingRouter(out io.Writer) http.Handler {
	return handlers.LoggingHandler(out, s.router)
}
