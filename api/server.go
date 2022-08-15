package api

import (
	"database/sql"
	"log"
	"net/http"
	"os"
	"time"

	"github.com/gorilla/mux"
	"github.com/pavbis/eventserver/api/handlers"
	"github.com/pavbis/eventserver/application/metrics"
	"github.com/pavbis/eventserver/application/repositories"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"

	// nolint: goimports
	_ "github.com/lib/pq"
)

// Server represents the whole service
type Server struct {
	router *mux.Router
	db     *sql.DB
	logger *log.Logger
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
	s.logger = log.New(os.Stdout, "", log.LstdFlags)

	var err error
	s.db, err = sql.Open("postgres", os.Getenv("DATABASE_URL"))
	if err != nil {
		s.logger.Fatal(err)
	}

	err = s.db.Ping()
	if err != nil {
		s.logger.Fatal(err)
	}
	s.db.SetMaxIdleConns(maxConnections)
	s.db.SetMaxOpenConns(maxConnections)

	s.router = mux.NewRouter().PathPrefix(apiPathPrefix).Subrouter()
	s.initializeRoutes()
}

// Run runs the server on specific port
func (s *Server) Run(addr string) {
	loggedRouter := s.createLoggingRouter(s.logger.Writer())

	srv := &http.Server{
		Handler:           loggedRouter,
		Addr:              addr,
		WriteTimeout:      15 * time.Second,
		ReadTimeout:       15 * time.Second,
		IdleTimeout:       120 * time.Second,
		ReadHeaderTimeout: 10 * time.Second,
	}

	s.logger.Fatal(srv.ListenAndServe())
}

// Health provides the /health route for load balancer health check
func (s *Server) Health(path string, f func(w http.ResponseWriter, r *http.Request)) {
	s.router.HandleFunc(path, f).Methods(http.MethodGet)
}

// Get wraps the router for GET method
func (s *Server) Get(path string, f func(w http.ResponseWriter, r *http.Request)) {
	s.router.HandleFunc(path, contentTypeMiddleware(basicAuthMiddleware(userName, password, f))).Methods(http.MethodGet)
}

// Post wraps the router for POST method
func (s *Server) Post(path string, f func(w http.ResponseWriter, r *http.Request)) {
	s.router.HandleFunc(path, contentTypeMiddleware(basicAuthMiddleware(userName, password, f))).Methods(http.MethodPost)
}

func (s *Server) initializeRoutes() {
	s.Health("/health", s.handleRequest(handlers.HealthRequestHandler))

	// Events
	s.Post("/streams/{streamName}/events", s.handleRequest(handlers.ReceiveEventRequestHandler))
	s.Post("/streams/{streamName}/events/{eventId}", s.handleRequest(handlers.ReceiveAcknowledgementRequestHandler))
	s.Get("/streams/{streamName}/events", s.handleRequest(handlers.ReceiveEventsRequestHandler))
	s.Post("/{streamName}/{consumerId}/{eventName}/change/{offset}", s.handleRequest(handlers.UpdateConsumerOffsetRequestHandler))
	s.Get("/events/{eventId}/payload", s.handleRequest(handlers.ReadEventPayloadRequestHandler))

	// Stats
	s.Get("/consumers/{streamName}", s.handleRequest(handlers.ConsumersForStreamRequestHandler))
	s.Get("/stats/events-per-stream", s.handleRequest(handlers.ReceiveEventsChartDataRequestHandler))
	s.Get("/stats/stream-data", s.handleRequest(handlers.ReceiveStreamDataRequestHandler))
	s.Get("/stats/events-current-month", s.handleRequest(handlers.ReceiveEventsForCurrentMonthRequestHandler))

	//Search
	s.Post("/search", s.handleRequest(handlers.SearchRequestHandler))
	s.Post("/event-period-search/{streamName}", s.handleRequest(handlers.EventPeriodSearchRequestHandler))

	//Metrics
	metricsStorage := repositories.NewPostgresMetricsStore(s.db)
	metricsCollector := metrics.NewOpenMetricsCollector(metricsStorage)

	registry := prometheus.NewRegistry()
	registry.MustRegister(metricsCollector)

	s.router.Handle("/metrics", promhttp.HandlerFor(registry, promhttp.HandlerOpts{}))
}

// RequestHandlerFunction is the function to call any handle
type RequestHandlerFunction func(db repositories.Executor, w http.ResponseWriter, r *http.Request)

func (s *Server) handleRequest(handler RequestHandlerFunction) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		handler(s.db, w, r)
	}
}
