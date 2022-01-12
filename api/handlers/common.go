package handlers

import (
	"encoding/json"
	"net/http"

	"github.com/pavbis/eventserver/application/repositories"
)

func respondWithJSON(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)
	respond(w, code, response)
}

func respond(w http.ResponseWriter, code int, jsonData []byte) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	_, _ = w.Write(jsonData)
}

func respondWithError(w http.ResponseWriter, code int, message string) {
	respondWithJSON(w, code, map[string]string{"error": message})
}

// HealthRequestHandler provides response for load balancer
func HealthRequestHandler(db repositories.Executor, w http.ResponseWriter, r *http.Request) {
	status := "OK"

	healthStatus := struct {
		AppStatus string `json:"status"`
	}{status}
	respondWithJSON(w, http.StatusOK, healthStatus)
}
