package handlers

import (
	"encoding/json"
	"net/http"

	"github.com/go-playground/validator/v10"
	"github.com/google/uuid"
	"github.com/pavbis/eventserver/api/input"
	"github.com/pavbis/eventserver/application/repositories"
	"github.com/pavbis/eventserver/application/types"
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

	event.EventID = uuid.New().String()

	producerID := types.ProducerID{UUID: receiveEventRequest.XProducerID}
	streamName := types.StreamName{Name: receiveEventRequest.StreamName}
	eventStore := repositories.NewPostgresWriteEventStore(db)
	result, err := eventStore.RecordEvent(producerID, streamName, event)

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

	consumerID := types.ConsumerID{UUID: receiveAcknowledgementRequest.ConsumerID}
	streamName := types.StreamName{Name: receiveAcknowledgementRequest.StreamName}
	eventID := types.EventID{UUID: receiveAcknowledgementRequest.EventID}

	eventStore := repositories.NewPostgresWriteEventStore(db)
	result, err := eventStore.AcknowledgeEvent(consumerID, streamName, eventID)

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
		ConsumerID:    types.ConsumerID{UUID: receiveEventsRequest.ConsumerID},
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

// ReadEventPayloadRequestHandler returns payload for specific event id
func ReadEventPayloadRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	receiveEventPayloadRequest, err := input.NewReadEventPayloadRequest(r)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	eventStore := repositories.NewPostgresReadEventStore(db)
	result, err := eventStore.ReadPayloadForEventID(receiveEventPayloadRequest.EventID)

	if err != nil {
		respondWithError(w, http.StatusNotFound, err.Error())
		return
	}

	respond(w, http.StatusOK, result)
}
