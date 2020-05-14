package repositories

import "database/sql"

type postgresChartStore struct {
	sqlManager *sql.DB
}

func NewPostgresChartStore(sqlManger *sql.DB) *postgresChartStore {
	return &postgresChartStore{sqlManager: sqlManger}
}

func (c *postgresChartStore) EventsChartData() ([]byte, error) {
	row := c.sqlManager.QueryRow("SELECT stream_chart_data()")

	return c.handleRDBMSResult(row)
}

func (c *postgresChartStore) StreamChartData() ([]byte, error) {
	row := c.sqlManager.QueryRow("SELECT stream_stats_data()")

	return c.handleRDBMSResult(row)
}

func (c *postgresChartStore) EventsForCurrentMonth() ([]byte, error) {
	row := c.sqlManager.QueryRow("SELECT events_for_current_month()")

	return c.handleRDBMSResult(row)
}

func (c *postgresChartStore) handleRDBMSResult(r *sql.Row) ([]byte, error) {
	var jsonResponse []byte

	if err := r.Scan(&jsonResponse); err != nil {
		return nil, err
	}

	return jsonResponse, nil
}
