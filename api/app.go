package api

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/go-playground/validator/v10"
	"github.com/gorilla/mux"
	_ "github.com/lib/pq"
)

type App struct {
	Router   *mux.Router
	DB       *sql.DB
	Logger   *log.Logger
	validate *validator.Validate
}

const (
	userName = "test"
	password = "test"
)

func (a *App) Initialize(user, password, dbname, host, sslmode string) {
	a.Logger = log.New(os.Stdout, "", log.LstdFlags)

	dsn := fmt.Sprintf("user=%s password=%s dbname=%s host=%s sslmode=%s", user, password, dbname, host, sslmode)

	var err error
	a.DB, err = sql.Open("postgres", dsn)
	if err != nil {
		a.Logger.Fatal(err)
	}

	err = a.DB.Ping()
	if err != nil {
		a.Logger.Fatal(err)
	}

	a.validate = validator.New()
	a.registerCustomValidators()

	a.Router = mux.NewRouter()
	a.initializeRoutes()
}

func (a *App) Run(addr string) {
	loggedRouter := a.createLoggingRouter(a.Logger.Writer())
	a.Logger.Fatal(http.ListenAndServe(addr, loggedRouter))

	defer a.DB.Close()
}

func (a *App) registerCustomValidators() {
	_ = a.validate.RegisterValidation("contentType", func(fl validator.FieldLevel) bool {
		return fl.Field().String() == "application/json; charset=utf-8"
	})
}

func (a *App) initializeRoutes() {
	a.Router.HandleFunc("/health", a.healthRequestHandler).Methods(http.MethodGet)

	api := a.Router.PathPrefix("/api/v1").Subrouter()
	api.HandleFunc(
		"/streams/{streamName}/events",
		basicAuthMiddleware(userName, password, a.receiveEventRequestHandler)).Methods(http.MethodPost)
}

func (a *App) respondWithJSON(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	_, _ = w.Write(response)
}

func (a *App) respondWithError(w http.ResponseWriter, code int, message string) {
	a.respondWithJSON(w, code, map[string]string{"error": message})

	a.Logger.Printf("App error: code %d, message %s", code, message)
}
