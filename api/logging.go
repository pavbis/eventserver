package api

import (
	"github.com/gorilla/handlers"
	"io"
	"net/http"
)

func (a *App) createLoggingRouter(out io.Writer) http.Handler {
	return handlers.LoggingHandler(out, a.Router)
}
