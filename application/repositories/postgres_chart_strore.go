package repositories

type PostgresChartStore struct {
	sqlManager Executor
}

// NewPostgresChartStore creates new instance of chart store
func NewPostgresChartStore(sqlManger Executor) *PostgresChartStore {
	return &PostgresChartStore{sqlManager: sqlManger}
}

func (c *PostgresChartStore) EventsChartData() ([]byte, error) {
	row := c.sqlManager.QueryRow(`SELECT COALESCE(stream_chart_data(), '[]')`)

	return scanOrFail(row)
}

func (c *PostgresChartStore) StreamChartData() ([]byte, error) {
	row := c.sqlManager.QueryRow(`SELECT COALESCE(stream_stats_data(), '[]')`)

	return scanOrFail(row)
}

func (c *PostgresChartStore) EventsForCurrentMonth() ([]byte, error) {
	row := c.sqlManager.QueryRow(`SELECT events_for_current_month()`)

	return scanOrFail(row)
}
