package repositories

import (
	"github.com/pavbis/eventserver/application/types"
)

type PostgresSearchStore struct {
	sqlManager Executor
}

// NewPostgresSearchStore creates the new instance of postgres search event store
func NewPostgresSearchStore(sqlManger Executor) *PostgresSearchStore {
	return &PostgresSearchStore{sqlManager: sqlManger}
}

func (s *PostgresSearchStore) SearchResults(st types.SearchTerm) ([]byte, error) {
	row := s.sqlManager.QueryRow(
		`SELECT COALESCE(json_agg(t), '[]') FROM (SELECT search_results($1) as search_result) t`, st.Term)

	return scanOrFail(row)
}
