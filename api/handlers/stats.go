package handlers

import (
	"github.com/go-playground/validator/v10"
	"github.com/pavbis/eventserver/api/input"
	"github.com/pavbis/eventserver/application/repositories"
	"github.com/pavbis/eventserver/application/types"
	"net/http"
)

// ConsumersForStreamRequestHandler provides consumers for all streams
func ConsumersForStreamRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
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
func ReceiveEventsChartDataRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(db)
	chartData, err := eventStore.EventsChartData()

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, chartData)
}

// ReceiveStreamDataRequestHandler provides streams chart data
func ReceiveStreamDataRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(db)
	chartData, err := eventStore.StreamChartData()

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, chartData)
}

// ReceiveEventsForCurrentMonthRequestHandler provides events chart data for current month
func ReceiveEventsForCurrentMonthRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(db)
	chartData, err := eventStore.EventsForCurrentMonth()

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, chartData)
}
