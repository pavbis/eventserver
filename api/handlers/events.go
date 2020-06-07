package handlers

import (
	"bitbucket.org/pbisse/eventserver/api/input"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"bitbucket.org/pbisse/eventserver/application/types"
	"encoding/json"
	"github.com/go-playground/validator/v10"
	"github.com/google/uuid"
	"net/http"
)

// ReceiveEventRequestHandler handles receiving of event
func ReceiveEventRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	receiveEventRequest := input.NewReceiveEventRequestFromRequest(r)
	v := validator.New()

	if err := v.Struct(receiveEventRequest); err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	var event types.Event
	decoder := json.NewDecoder(r.Body)
	defer r.Body.Close()

	err := decoder.Decode(&event)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	if err := v.Struct(event); err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	event.EventId = uuid.New().String()

	producerId := types.ProducerId{UUID: receiveEventRequest.XProducerId}
	streamName := types.StreamName{Name: receiveEventRequest.StreamName}
	eventStore := repositories.NewPostgresWriteEventStore(db)
	result, err := eventStore.RecordEvent(producerId, streamName, event)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	respondWithJSON(w, http.StatusCreated, result)
}

// ReceiveAcknowledgementRequestHandler acknowledges event
func ReceiveAcknowledgementRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	receiveAcknowledgementRequest, err := input.NewReceiveAcknowledgementFromRequest(r)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	consumerId := types.ConsumerId{UUID: receiveAcknowledgementRequest.ConsumerId}
	streamName := types.StreamName{Name: receiveAcknowledgementRequest.StreamName}
	eventId := types.EventId{UUID: receiveAcknowledgementRequest.EventId}

	eventStore := repositories.NewPostgresWriteEventStore(db)
	result, err := eventStore.AcknowledgeEvent(consumerId, streamName, eventId)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	respondWithJSON(w, http.StatusOK, result)
}

// ReceiveEventsRequestHandler returns event for provided stream
func ReceiveEventsRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	receiveEventsRequest, err := input.NewReceiveEventsFromRequest(r)
	v := validator.New()

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	if err := v.Struct(receiveEventsRequest); err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	selectEventsQuery := types.SelectEventsQuery{
		ConsumerId:    types.ConsumerId{UUID: receiveEventsRequest.ConsumerId},
		StreamName:    types.StreamName{Name: receiveEventsRequest.StreamName},
		EventName:     types.EventName{Name: receiveEventsRequest.EventName},
		MaxEventCount: types.MaxEventCount{Count: receiveEventsRequest.Limit},
	}

	eventStore := repositories.NewPostgresReadEventStore(db)
	result, err := eventStore.SelectEvents(selectEventsQuery)

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respondWithJSON(w, http.StatusOK, result)
}
