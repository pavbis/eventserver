package metrics

import "github.com/prometheus/client_golang/prometheus"

func newStreamsMetric() *prometheus.Desc {
	return prometheus.NewDesc(
		prometheus.BuildFQName("", "", "streams_total"),
		"Total number of streams",
		nil,
		nil,
	)
}

func newEventsInStreamMetric() *prometheus.Desc {
	return prometheus.NewDesc(
		prometheus.BuildFQName("", "", "events_total"),
		"Total amount of events per stream",
		[]string{"producerId", "stream"},
		nil,
	)
}

func newConsumersInStreamMetric() *prometheus.Desc {
	return prometheus.NewDesc(
		prometheus.BuildFQName("", "", "consumers_total"),
		"Total amount of registered consumers per stream",
		[]string{"stream"},
		nil,
	)
}

func newConsumersOffsetsMetric() *prometheus.Desc {
	return prometheus.NewDesc(
		prometheus.BuildFQName("", "", "consumer_offset"),
		"Current offset of consumers per stream and event",
		[]string{"stream", "consumerId", "eventName"},
		nil,
	)
}
