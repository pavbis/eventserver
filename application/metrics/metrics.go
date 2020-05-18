package metrics

import "github.com/prometheus/client_golang/prometheus"

var basename = "eventserver"

func newStreamsMetric() *prometheus.Desc {
	return prometheus.NewDesc(
		prometheus.BuildFQName(basename, "", "streams"),
		"Total number of streams",
		nil,
		nil,
	)
}
