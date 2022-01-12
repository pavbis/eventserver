package handlers

import (
	"fmt"
	"net/http"

	"github.com/pavbis/eventserver/api/input"
	"github.com/pavbis/eventserver/application/repositories"
)

// UpdateConsumerOffsetRequestHandler returns event for provided stream
func UpdateConsumerOffsetRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	updateConsumerOffsetRequest, err := input.NewUpdateConsumerOffsetRequest(r)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	eventStore := repositories.NewPostgresWriteEventStore(db)
	err = eventStore.UpdateConsumerOffset(
		updateConsumerOffsetRequest.ConsumerID,
		updateConsumerOffsetRequest.StreamName,
		updateConsumerOffsetRequest.EventName,
		updateConsumerOffsetRequest.ConsumerOffset)

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	result := fmt.Sprintf(
		"successfully updated offset to %d for consumer %s",
		updateConsumerOffsetRequest.Offset, updateConsumerOffsetRequest.ConsumerID.UUID.String())

	respondWithJSON(w, http.StatusOK, result)
}
