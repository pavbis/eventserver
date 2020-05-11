package api

import (
	"encoding/json"
	"net/http"
)

func (a *App) respondWithJSON(w http.ResponseWriter, code int, payload interface{}) {
	response, _ := json.Marshal(payload)

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(code)
	_, _ = w.Write(response)
}

func (a *App) respondWithError(w http.ResponseWriter, code int, message string) {
	a.respondWithJSON(w, code, map[string]string{"error": message})

	a.Logger.Printf("App error: code %d, message %s", code, message)
}

func (a *App) healthHandler(w http.ResponseWriter, r *http.Request) {
	status := "OK"

	healthStatus := struct {
		AppStatus string `json:"status"`
	}{status}
	a.respondWithJSON(w, http.StatusOK, healthStatus)
}
