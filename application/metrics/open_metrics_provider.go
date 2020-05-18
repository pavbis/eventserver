package metrics

import (
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"github.com/prometheus/client_golang/prometheus"
	"sync"
)

type openMetricsCollector struct {
	MetricsStorage repositories.MetricsData
	streams        *prometheus.Desc
	eventsInStream *prometheus.Desc

	mutex sync.Mutex
}

func NewOpenMetricsCollector(s repositories.MetricsData) *openMetricsCollector {
	return &openMetricsCollector{
		MetricsStorage: s,
		streams:        newStreamsMetric(),
		eventsInStream: newEventsInStreamMetric(),
	}
}

func (o *openMetricsCollector) Describe(channel chan<- *prometheus.Desc) {
	channel <- o.streams
	channel <- o.eventsInStream
}

func (o *openMetricsCollector) Collect(channel chan<- prometheus.Metric) {
	o.mutex.Lock()
	defer o.mutex.Unlock()

	streamsTotal, err := o.MetricsStorage.StreamsTotal()
	eventsInStream, err := o.MetricsStorage.EventsInStreamsWithOwner()

	if err != nil {
		return
	}

	channel <- prometheus.MustNewConstMetric(o.streams, prometheus.CounterValue, streamsTotal.Value)

	for _, streamTotals := range eventsInStream {
		channel <- prometheus.MustNewConstMetric(
			o.eventsInStream, prometheus.CounterValue, streamTotals.EventCount, streamTotals.ProducerId.UUID, streamTotals.StreamName.Name)
	}
}
