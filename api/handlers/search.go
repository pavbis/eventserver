package handlers

import (
	"bitbucket.org/pbisse/eventserver/api/input"
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"bitbucket.org/pbisse/eventserver/application/specifications/search"
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
	"github.com/go-playground/validator/v10"
	"github.com/gorilla/mux"
	"net/http"
)

func SearchRequestHandler(db *sql.DB, w http.ResponseWriter, r *http.Request) {
	searchTermRequest := input.NewSearchTermInputFromRequest(r)
	v := validator.New()

	if err := v.Struct(searchTermRequest); err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	searchTerm := types.SearchTerm{Term: searchTermRequest.Term}
	searchEventStore := repositories.NewPostgresSearchStore(db)
	result, err := searchEventStore.SearchResults(searchTerm)

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, result)
}

func EventPeriodSearchRequestHandler(db *sql.DB, w http.ResponseWriter, r *http.Request) {
	period := types.Period{Value: r.URL.Query().Get("period")}
	specList := search.SpecList{}
	spec, err := search.NewSpecRetriever(specList.ListAll()).FindSpec(&period)

	if err != nil {
		respondWithError(w, http.StatusBadRequest, err.Error())
		return
	}

	vars := mux.Vars(r)
	streamName := types.StreamName{Name: vars["streamName"]}
	readEventStore := repositories.NewPostgresReadEventStore(db)
	result, err := readEventStore.SelectEventsInStreamForPeriod(streamName, spec)

	if err != nil {
		respondWithError(w, http.StatusInternalServerError, err.Error())
		return
	}

	respond(w, http.StatusOK, result)
}
