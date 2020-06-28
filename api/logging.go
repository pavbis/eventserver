package api

import (
	"github.com/gorilla/handlers"
	"io"
	"net/http"
)

func (a *ApiServer) createLoggingRouter(out io.Writer) http.Handler {
	return handlers.LoggingHandler(out, a.Router)
}
