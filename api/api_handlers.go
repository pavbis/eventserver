package api

import (
	"bitbucket.org/pbisse/eventserver/api/input"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"bitbucket.org/pbisse/eventserver/application/types"
	"encoding/json"
	"github.com/google/uuid"
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
	result := eventStore.RecordEvent(producerId, streamName, event)

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

	if err != nil {
		a.respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	a.respondWithJSON(w, http.StatusOK, result)
}
