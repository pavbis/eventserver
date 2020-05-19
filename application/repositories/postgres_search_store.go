package repositories

import (
	"bitbucket.org/pbisse/eventserver/application/types"
	"database/sql"
	"strings"
)

type postgresSearchStore struct {
	sqlManager *sql.DB
}

func NewPostgresSearchStore(sqlManger *sql.DB) *postgresSearchStore {
	return &postgresSearchStore{sqlManager: sqlManger}
}

func (s *postgresSearchStore) SearchResults(st types.SearchTerm) ([]byte, error) {
	row := s.sqlManager.QueryRow(
		`SELECT json_agg(t)FROM (SELECT search_results($1) as search_result) t`, st.Term)

	var jsonResponse []byte

	if err := row.Scan(&jsonResponse); err != nil {
		return nil, err
	}

	if len(strings.TrimSpace(string(jsonResponse))) == 0 {
		return []byte("[]"), nil
	}

	return jsonResponse, nil
}
