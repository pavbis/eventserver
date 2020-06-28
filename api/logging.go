package api

import (
	"github.com/gorilla/handlers"
	"io"
	"net/http"
)

func (s *Server) createLoggingRouter(out io.Writer) http.Handler {
	return handlers.LoggingHandler(out, s.Router)
}
