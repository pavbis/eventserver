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
	a.validateStruct(receiveEventRequest, w)

	var event types.Event
	decoder := json.NewDecoder(r.Body)
	defer r.Body.Close()

	err := decoder.Decode(&event)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	a.validateStruct(event, w)
	event.EventId = uuid.New().String()

	producerId := types.ProducerId{UUID: receiveEventRequest.XProducerId}
	streamName := types.StreamName{Name: receiveEventRequest.StreamName}
	eventStore := repositories.NewPostgresWriteEventStore(a.DB)
	result := eventStore.RecordEvent(producerId, streamName, event)

	a.respondWithJSON(w, http.StatusCreated, result)
}

func (a *App) receiveAcknowledgementRequestHandler(w http.ResponseWriter, r *http.Request) {
	receiveAcknowledgementRequest, err := input.NewReceiveAcknowledgementFromRequest(r)

	if err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	a.validateStruct(receiveAcknowledgementRequest, w)

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
	a.validateStruct(receiveEventsRequest, w)

	selectEventsQuery := types.SelectEventsQuery{
		ConsumerId:    types.ConsumerId{UUID: receiveEventsRequest.ConsumerId},
		StreamName:    types.StreamName{Name: receiveEventsRequest.StreamName},
		EventName:     types.EventName{Name: receiveEventsRequest.EventName},
		MaxEventCount: types.MaxEventCount{Count: receiveEventsRequest.Limit},
	}

	eventStore := repositories.NewPostgresReadEventStore(a.DB)
	result, err := eventStore.SelectEvents(selectEventsQuery)
	a.handleEmptyStorageResult(err, w)

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusOK, result)
}

func (a *App) receiveEventsChartDataRequestHandler(w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(a.DB)
	chartData, err := eventStore.EventsChartData()
	a.handleEmptyStorageResult(err, w)

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, chartData)
}

func (a *App) receiveStreamDataRequestHandler(w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(a.DB)
	chartData, err := eventStore.StreamChartData()
	a.handleEmptyStorageResult(err, w)

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, chartData)
}

func (a *App) receiveEventsForCurrentMonthRequestHandler(w http.ResponseWriter, r *http.Request) {
	eventStore := repositories.NewPostgresChartStore(a.DB)
	chartData, err := eventStore.EventsForCurrentMonth()
	a.handleEmptyStorageResult(err, w)

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, chartData)
}

func (a *App) searchRequestHandler(w http.ResponseWriter, r *http.Request) {
	searchTermRequest := input.NewSearchTermInputFromRequest(r)
	a.validateStruct(searchTermRequest, w)

	searchTerm := types.SearchTerm{Term: searchTermRequest.Term}
	searchEventStore := repositories.NewPostgresSearchStore(a.DB)

	result, err := searchEventStore.SearchResults(searchTerm)
	a.handleEmptyStorageResult(err, w)

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respond(w, http.StatusOK, result)
}

func (a *App) consumersForStreamRequestHandler(w http.ResponseWriter, r *http.Request) {
	consumersRequest := input.NewConsumerForStreamInputFromRequest(r)
	a.validateStruct(consumersRequest, w)

	streamName := types.StreamName{Name: consumersRequest.StreamName}
	readEventStore := repositories.NewPostgresReadEventStore(a.DB)
	result, err := readEventStore.SelectConsumersForStream(streamName)

	a.handleEmptyStorageResult(err, w)

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
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	vars := mux.Vars(r)
	streamName := types.StreamName{Name: vars["streamName"]}
	readEventStore := repositories.NewPostgresReadEventStore(a.DB)
	result, err := readEventStore.SelectEventsForStream(streamName, spec)

	a.handleEmptyStorageResult(err, w)

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusOK, result)
}

func (a *App) validateStruct(i interface{}, w http.ResponseWriter) {
	if err := a.validate.Struct(i); err != nil {
		a.respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}
}

func (a *App) handleEmptyStorageResult(err error, w http.ResponseWriter) {
	if errors.Is(err, sql.ErrNoRows) {
		a.respondWithJSON(w, http.StatusOK, make([]string, 0))
		return
	}
}
