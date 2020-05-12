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
	err := json.NewDecoder(r.Body).Decode(&event)
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
