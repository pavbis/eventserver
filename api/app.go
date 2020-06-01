package api

import (
	"bitbucket.org/pbisse/eventserver/api/config"
	"bitbucket.org/pbisse/eventserver/application/metrics"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"database/sql"
	"encoding/json"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"log"
	"net/http"
	"os"

	"github.com/go-playground/validator/v10"
	"github.com/gorilla/mux"
	_ "github.com/lib/pq"
)

// App represents the whole service
type App struct {
	Router   *mux.Router
	DB       *sql.DB
	Logger   *log.Logger
	validate *validator.Validate
}

const maxConnections = 100

var (
	userName = os.Getenv("AUTH_USER")
	password = os.Getenv("AUTH_PASS")
)

// Initialize does the app initialization
func (a *App) Initialize() {
	a.Logger = log.New(os.Stdout, "", log.LstdFlags)

	dsn := config.NewDsnFromEnv()
	var err error
	a.DB, err = sql.Open("postgres", dsn)
	if err != nil {
		a.Logger.Fatal(err)
	}

	err = a.DB.Ping()
	if err != nil {
		a.Logger.Fatal(err)
	}
	a.DB.SetMaxIdleConns(maxConnections)
	a.DB.SetMaxOpenConns(maxConnections)
	a.validate = validator.New()

	a.Router = mux.NewRouter()
	a.initializeRoutes()
}

// Run runs the app on specific port
func (a *App) Run(addr string) {
	loggedRouter := a.createLoggingRouter(a.Logger.Writer())
	a.Logger.Fatal(http.ListenAndServe(addr, loggedRouter))
}

func (a *App) initializeRoutes() {
	a.Router.HandleFunc("/health", a.healthRequestHandler).Methods(http.MethodGet)

	api := a.Router.PathPrefix("/api/v1").Subrouter()
	api.HandleFunc(
		"/streams/{streamName}/events",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.receiveEventRequestHandler))).Methods(http.MethodPost)
	api.HandleFunc(
		"/streams/{streamName}/events/{eventId}",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.receiveAcknowledgementRequestHandler))).Methods(http.MethodPost)
	api.HandleFunc(
		"/streams/{streamName}/events",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.receiveEventsRequestHandler))).Methods(http.MethodGet)
	api.HandleFunc(
		"/consumers/{streamName}",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.consumersForStreamRequestHandler))).Methods(http.MethodGet)
	// Stats
	api.HandleFunc(
		"/stats/events-per-stream",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.receiveEventsChartDataRequestHandler))).Methods(http.MethodGet)
	api.HandleFunc(
		"/stats/stream-data",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.receiveStreamDataRequestHandler))).Methods(http.MethodGet)
	api.HandleFunc(
		"/stats/events-current-month",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.receiveEventsForCurrentMonthRequestHandler))).Methods(http.MethodGet)
	//Search
	api.HandleFunc(
		"/search",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.searchRequestHandler))).Methods(http.MethodPost)
	api.HandleFunc(
		"/event-period-search/{streamName}",
		contentTypeMiddleware(
			basicAuthMiddleware(userName, password, a.eventPeriodSearchRequestHandler))).Methods(http.MethodPost)
	//Metrics
	metricsStorage := repositories.NewPostgresMetricsStore(a.DB)
	metricsCollector := metrics.NewOpenMetricsCollector(metricsStorage)

	registry := prometheus.NewRegistry()
	registry.MustRegister(metricsCollector)

	api.Handle("/metrics", promhttp.HandlerFor(registry, promhttp.HandlerOpts{}))
}

func (a *App) respondWithJSON(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)
	a.respond(w, code, response)
}

func (a *App) respond(w http.ResponseWriter, code int, jsonData []byte) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	_, _ = w.Write(jsonData)
}

func (a *App) respondWithError(w http.ResponseWriter, code int, message string) {
	a.respondWithJSON(w, code, map[string]string{"error": message})

	a.Logger.Printf("App error: code %d, message %s", code, message)
}
