package api

import (
	"bitbucket.org/pbisse/eventserver/api/config"
	"bitbucket.org/pbisse/eventserver/api/handlers"
	"bitbucket.org/pbisse/eventserver/application/metrics"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"database/sql"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"log"
	"net/http"
	_ "net/http/pprof"
	"os"

	"github.com/gorilla/mux"
	_ "github.com/lib/pq"
)

// App represents the whole service
type App struct {
	Router *mux.Router
	DB     *sql.DB
	Logger *log.Logger
}

const (
	maxConnections = 100
	apiPathPrefix = "/api/v1"
)

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

	a.Router = mux.NewRouter().PathPrefix(apiPathPrefix).Subrouter()
	a.initializeRoutes()
}

// Run runs the app on specific port
func (a *App) Run(addr string) {
	loggedRouter := a.createLoggingRouter(a.Logger.Writer())
	a.Logger.Fatal(http.ListenAndServe(addr, loggedRouter))
}

// Health provides the /health route for load balancer health check
func (a *App) Health(path string, f func(w http.ResponseWriter, r *http.Request)) {
	a.Router.HandleFunc(path, f).Methods(http.MethodGet)
}

// Get wraps the router for GET method
func (a *App) Get(path string, f func(w http.ResponseWriter, r *http.Request)) {
	a.Router.HandleFunc(path, contentTypeMiddleware(basicAuthMiddleware(userName, password, f))).Methods(http.MethodGet)
}

// Post wraps the router for POST method
func (a *App) Post(path string, f func(w http.ResponseWriter, r *http.Request)) {
	a.Router.HandleFunc(path, contentTypeMiddleware(basicAuthMiddleware(userName, password, f))).Methods(http.MethodPost)
}

func (a *App) initializeRoutes() {
	a.Health("/health", a.handleRequest(handlers.HealthRequestHandler))

	// Events
	a.Post("/streams/{streamName}/events", a.handleRequest(handlers.ReceiveEventRequestHandler))
	a.Post("/streams/{streamName}/events/{eventId}", a.handleRequest(handlers.ReceiveAcknowledgementRequestHandler))
	a.Get("/streams/{streamName}/events", a.handleRequest(handlers.ReceiveEventsRequestHandler))

	// Stats
	a.Get("/consumers/{streamName}", a.handleRequest(handlers.ConsumersForStreamRequestHandler))
	a.Get("/stats/events-per-stream", a.handleRequest(handlers.ReceiveEventsChartDataRequestHandler))
	a.Get("/stats/stream-data", a.handleRequest(handlers.ReceiveStreamDataRequestHandler))
	a.Get("/stats/events-current-month", a.handleRequest(handlers.ReceiveEventsForCurrentMonthRequestHandler))

	//Search
	a.Post("/search", a.handleRequest(handlers.SearchRequestHandler))
	a.Post("/event-period-search/{streamName}", a.handleRequest(handlers.EventPeriodSearchRequestHandler))

	//Metrics
	metricsStorage := repositories.NewPostgresMetricsStore(a.DB)
	metricsCollector := metrics.NewOpenMetricsCollector(metricsStorage)

	registry := prometheus.NewRegistry()
	registry.MustRegister(metricsCollector)

	a.Router.Handle("/metrics", promhttp.HandlerFor(registry, promhttp.HandlerOpts{}))
}

// RequestHandlerFunction is the function to call any handle
type RequestHandlerFunction func(db repositories.Executor, w http.ResponseWriter, r *http.Request)

func (a *App) handleRequest(handler RequestHandlerFunction) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		handler(a.DB, w, r)
	}
}
