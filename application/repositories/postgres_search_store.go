package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
)

type postgresSearchStore struct {
	sqlManager *sql.DB
}

// NewPostgresSearchStore creates the new instance of postgres search event store
func NewPostgresSearchStore(sqlManger *sql.DB) *postgresSearchStore {
	return &postgresSearchStore{sqlManager: sqlManger}
}

func (s *postgresSearchStore) SearchResults(st types.SearchTerm) ([]byte, error) {
	row := s.sqlManager.QueryRow(
		`SELECT COALESCE(json_agg(t), '[]') FROM (SELECT search_results($1) as search_result) t`, st.Term)

	return scanOrFail(row)
}
