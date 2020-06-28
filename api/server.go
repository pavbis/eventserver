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

// Server represents the whole service
type Server struct {
	Router *mux.Router
	DB     *sql.DB
	Logger *log.Logger
}

const (
	maxConnections = 100
	apiPathPrefix  = "/api/v1"
)

var (
	userName = os.Getenv("AUTH_USER")
	password = os.Getenv("AUTH_PASS")
)

// Initialize does the app initialization
func (s *Server) Initialize() {
	s.Logger = log.New(os.Stdout, "", log.LstdFlags)

	dsn := config.NewDsnFromEnv()
	var err error
	s.DB, err = sql.Open("postgres", dsn)
	if err != nil {
		s.Logger.Fatal(err)
	}

	err = s.DB.Ping()
	if err != nil {
		s.Logger.Fatal(err)
	}
	s.DB.SetMaxIdleConns(maxConnections)
	s.DB.SetMaxOpenConns(maxConnections)

	s.Router = mux.NewRouter().PathPrefix(apiPathPrefix).Subrouter()
	s.initializeRoutes()
}

// Run runs the server on specific port
func (s *Server) Run(addr string) {
	loggedRouter := s.createLoggingRouter(s.Logger.Writer())
	s.Logger.Fatal(http.ListenAndServe(addr, loggedRouter))
}

// Health provides the /health route for load balancer health check
func (s *Server) Health(path string, f func(w http.ResponseWriter, r *http.Request)) {
	s.Router.HandleFunc(path, f).Methods(http.MethodGet)
}

// Get wraps the router for GET method
func (s *Server) Get(path string, f func(w http.ResponseWriter, r *http.Request)) {
	s.Router.HandleFunc(path, contentTypeMiddleware(basicAuthMiddleware(userName, password, f))).Methods(http.MethodGet)
}

// Post wraps the router for POST method
func (s *Server) Post(path string, f func(w http.ResponseWriter, r *http.Request)) {
	s.Router.HandleFunc(path, contentTypeMiddleware(basicAuthMiddleware(userName, password, f))).Methods(http.MethodPost)
}

func (s *Server) initializeRoutes() {
	s.Health("/health", s.handleRequest(handlers.HealthRequestHandler))

	// Events
	s.Post("/streams/{streamName}/events", s.handleRequest(handlers.ReceiveEventRequestHandler))
	s.Post("/streams/{streamName}/events/{eventId}", s.handleRequest(handlers.ReceiveAcknowledgementRequestHandler))
	s.Get("/streams/{streamName}/events", s.handleRequest(handlers.ReceiveEventsRequestHandler))

	// Stats
	s.Get("/consumers/{streamName}", s.handleRequest(handlers.ConsumersForStreamRequestHandler))
	s.Get("/stats/events-per-stream", s.handleRequest(handlers.ReceiveEventsChartDataRequestHandler))
	s.Get("/stats/stream-data", s.handleRequest(handlers.ReceiveStreamDataRequestHandler))
	s.Get("/stats/events-current-month", s.handleRequest(handlers.ReceiveEventsForCurrentMonthRequestHandler))

	//Search
	s.Post("/search", s.handleRequest(handlers.SearchRequestHandler))
	s.Post("/event-period-search/{streamName}", s.handleRequest(handlers.EventPeriodSearchRequestHandler))

	//Metrics
	metricsStorage := repositories.NewPostgresMetricsStore(s.DB)
	metricsCollector := metrics.NewOpenMetricsCollector(metricsStorage)

	registry := prometheus.NewRegistry()
	registry.MustRegister(metricsCollector)

	s.Router.Handle("/metrics", promhttp.HandlerFor(registry, promhttp.HandlerOpts{}))
}

// RequestHandlerFunction is the function to call any handle
type RequestHandlerFunction func(db repositories.Executor, w http.ResponseWriter, r *http.Request)

func (s *Server) handleRequest(handler RequestHandlerFunction) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		handler(s.DB, w, r)
	}
}
