package repositories

type postgresChartStore struct {
	sqlManager Executor
}

// NewPostgresChartStore creates new instance of chart store
func NewPostgresChartStore(sqlManger Executor) *postgresChartStore {
	return &postgresChartStore{sqlManager: sqlManger}
}

func (c *postgresChartStore) EventsChartData() ([]byte, error) {
	row := c.sqlManager.QueryRow(`SELECT COALESCE(stream_chart_data(), '[]')`)

	return scanOrFail(row)
}

func (c *postgresChartStore) StreamChartData() ([]byte, error) {
	row := c.sqlManager.QueryRow(`SELECT COALESCE(stream_stats_data(), '[]')`)

	return scanOrFail(row)
}

func (c *postgresChartStore) EventsForCurrentMonth() ([]byte, error) {
	row := c.sqlManager.QueryRow(`SELECT events_for_current_month()`)

	return scanOrFail(row)
}
