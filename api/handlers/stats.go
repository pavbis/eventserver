package handlers

import (
	"bitbucket.org/pbisse/eventserver/api/input"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
	"github.com/go-playground/validator/v10"
	"net/http"
)

// ConsumersForStreamRequestHandler provides consumers for all streams
func ConsumersForStreamRequestHandler(db *sql.DB, w http.ResponseWriter, r *http.Request) {
	consumersRequest := input.NewConsumerForStreamInputFromRequest(r)
	v := validator.New()

	if err := v.Struct(consumersRequest); err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	streamName := types.StreamName{Name: consumersRequest.StreamName}
	readEventStore := repositories.NewPostgresReadEventStore(db)
	result, err := readEventStore.SelectConsumersForStream(streamName)

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, result)
}

// ReceiveEventsChartDataRequestHandler provides events chart data
func ReceiveEventsChartDataRequestHandler(db *sql.DB, w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(db)
	chartData, err := eventStore.EventsChartData()

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, chartData)
}

// ReceiveStreamDataRequestHandler provides streams chart data
func ReceiveStreamDataRequestHandler(db *sql.DB, w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(db)
	chartData, err := eventStore.StreamChartData()

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, chartData)
}

// ReceiveEventsForCurrentMonthRequestHandler provides events chart data for current month
func ReceiveEventsForCurrentMonthRequestHandler(db *sql.DB, w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(db)
	chartData, err := eventStore.EventsForCurrentMonth()

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, chartData)
}
