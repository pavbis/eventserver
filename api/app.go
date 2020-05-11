package api

import (
	"log"
	"net/http"
	"os"

	"github.com/gorilla/mux"
)

type App struct {
	Router *mux.Router
	Logger *log.Logger
}

func (a *App) Initialize() {
	a.Logger = log.New(os.Stdout, "", log.LstdFlags)

	a.Router = mux.NewRouter()
	a.initializeRoutes()
}

func (a *App) Run(addr string) {
	loggedRouter := a.createLoggingRouter(a.Logger.Writer())
	a.Logger.Fatal(http.ListenAndServe(addr, loggedRouter))
}

func (a *App) initializeRoutes() {
	a.Router.HandleFunc("/health", a.healthHandler).Methods(http.MethodGet)
}
