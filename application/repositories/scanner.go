package repositories

import "database/sql"

func scanOrFail(r *sql.Row) ([]byte, error) {
	var jsonResponse []byte

	if err := r.Scan(&jsonResponse); err != nil {
		return nil, err
	}

	return jsonResponse, nil
}
