package api

import (
	"bitbucket.org/pbisse/eventserver/api/input"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"bitbucket.org/pbisse/eventserver/application/specifications/search"
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
	"encoding/json"
	"errors"
	"github.com/google/uuid"
	"github.com/gorilla/mux"
	"net/http"
)

func (a *App) healthRequestHandler(w http.ResponseWriter, r *http.Request) {
	status := "OK"

	healthStatus := struct {
		AppStatus string `json:"status"`
	}{status}
	a.respondWithJSON(w, http.StatusOK, healthStatus)
}

func (a *App) receiveEventRequestHandler(w http.ResponseWriter, r *http.Request) {
	receiveEventRequest := input.NewReceiveEventRequestFromRequest(r)

	if err := a.validate.Struct(receiveEventRequest); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	var event types.Event
	decoder := json.NewDecoder(r.Body)
	defer r.Body.Close()

	err := decoder.Decode(&event)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	if err := a.validate.Struct(event); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	event.EventId = uuid.New().String()

	producerId := types.ProducerId{UUID: receiveEventRequest.XProducerId}
	streamName := types.StreamName{Name: receiveEventRequest.StreamName}
	eventStore := repositories.NewPostgresWriteEventStore(a.DB)
	result, err := eventStore.RecordEvent(producerId, streamName, event)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusCreated, result)
}

func (a *App) receiveAcknowledgementRequestHandler(w http.ResponseWriter, r *http.Request) {
	receiveAcknowledgementRequest, err := input.NewReceiveAcknowledgementFromRequest(r)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	if err := a.validate.Struct(receiveAcknowledgementRequest); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	consumerId := types.ConsumerId{UUID: receiveAcknowledgementRequest.ConsumerId}
	streamName := types.StreamName{Name: receiveAcknowledgementRequest.StreamName}
	eventId := types.EventId{UUID: receiveAcknowledgementRequest.EventId}

	eventStore := repositories.NewPostgresWriteEventStore(a.DB)
	result := eventStore.AcknowledgeEvent(consumerId, streamName, eventId)

	a.respondWithJSON(w, http.StatusOK, result)
}

func (a *App) receiveEventsRequestHandler(w http.ResponseWriter, r *http.Request) {
	receiveEventsRequest, err := input.NewReceiveEventsFromRequest(r)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	if err := a.validate.Struct(receiveEventsRequest); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	selectEventsQuery := types.SelectEventsQuery{
		ConsumerId:    types.ConsumerId{UUID: receiveEventsRequest.ConsumerId},
		StreamName:    types.StreamName{Name: receiveEventsRequest.StreamName},
		EventName:     types.EventName{Name: receiveEventsRequest.EventName},
		MaxEventCount: types.MaxEventCount{Count: receiveEventsRequest.Limit},
	}

	eventStore := repositories.NewPostgresReadEventStore(a.DB)
	result, err := eventStore.SelectEvents(selectEventsQuery)

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusOK, result)
}

func (a *App) receiveEventsChartDataRequestHandler(w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(a.DB)
	chartData, err := eventStore.EventsChartData()

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, chartData)
}

func (a *App) receiveStreamDataRequestHandler(w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(a.DB)
	chartData, err := eventStore.StreamChartData()

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, chartData)
}

func (a *App) receiveEventsForCurrentMonthRequestHandler(w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(a.DB)
	chartData, err := eventStore.EventsForCurrentMonth()

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, chartData)
}

func (a *App) searchRequestHandler(w http.ResponseWriter, r *http.Request) {
	searchTermRequest := input.NewSearchTermInputFromRequest(r)

	if err := a.validate.Struct(searchTermRequest); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	searchTerm := types.SearchTerm{Term: searchTermRequest.Term}
	searchEventStore := repositories.NewPostgresSearchStore(a.DB)

	result, err := searchEventStore.SearchResults(searchTerm)

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, result)
}

func (a *App) consumersForStreamRequestHandler(w http.ResponseWriter, r *http.Request) {
	consumersRequest := input.NewConsumerForStreamInputFromRequest(r)

	if err := a.validate.Struct(consumersRequest); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	streamName := types.StreamName{Name: consumersRequest.StreamName}
	readEventStore := repositories.NewPostgresReadEventStore(a.DB)
	result, err := readEventStore.SelectConsumersForStream(streamName)

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusOK, result)
}

func (a *App) eventPeriodSearchRequestHandler(w http.ResponseWriter, r *http.Request) {
	period := types.Period{Value: r.URL.Query().Get("period")}
	specList := search.SpecList{}
	spec, err := search.NewSpecRetriever(specList.ListAll()).FindSpec(&period)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	vars := mux.Vars(r)
	streamName := types.StreamName{Name: vars["streamName"]}
	readEventStore := repositories.NewPostgresReadEventStore(a.DB)
	result, err := readEventStore.SelectEventsForStream(streamName, spec)

	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusOK, result)
}
