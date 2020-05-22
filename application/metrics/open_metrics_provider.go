package metrics

import (
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"github.com/prometheus/client_golang/prometheus"
	"sync"
)

type openMetricsCollector struct {
	MetricsStorage    repositories.MetricsData
	streams           *prometheus.Desc
	eventsInStream    *prometheus.Desc
	consumersInStream *prometheus.Desc
	consumersOffsets  *prometheus.Desc

	mutex sync.Mutex
}

func NewOpenMetricsCollector(s repositories.MetricsData) *openMetricsCollector {
	return &openMetricsCollector{
		MetricsStorage:    s,
		streams:           newStreamsMetric(),
		eventsInStream:    newEventsInStreamMetric(),
		consumersInStream: newConsumersInStreamMetric(),
		consumersOffsets:  newConsumersOffsetsMetric(),
	}
}

func (o *openMetricsCollector) Describe(channel chan<- *prometheus.Desc) {
	channel <- o.streams
	channel <- o.eventsInStream
	channel <- o.consumersInStream
	channel <- o.consumersOffsets
}

func (o *openMetricsCollector) Collect(channel chan<- prometheus.Metric) {
	o.mutex.Lock()
	defer o.mutex.Unlock()

	streamsTotal, err := o.MetricsStorage.StreamsTotal()
	eventsInStream, err := o.MetricsStorage.EventsInStreamsWithOwner()
	consumersInStream, err := o.MetricsStorage.ConsumersInStream()
	consumersOffsets, err := o.MetricsStorage.ConsumersOffsets()

	if err != nil {
		return
	}

	channel <- prometheus.MustNewConstMetric(o.streams, prometheus.CounterValue, streamsTotal.Value)

	for _, streamTotals := range eventsInStream {
		channel <- prometheus.MustNewConstMetric(
			o.eventsInStream,
			prometheus.CounterValue,
			streamTotals.EventCount, streamTotals.ProducerId.UUID, streamTotals.StreamName.Name)
	}

	for _, consumer := range consumersInStream {
		channel <- prometheus.MustNewConstMetric(
			o.consumersInStream, prometheus.CounterValue, consumer.ConsumerCount, consumer.StreamName.Name)
	}

	for _, consumer := range consumersOffsets {
		channel <- prometheus.MustNewConstMetric(
			o.consumersOffsets,
			prometheus.GaugeValue,
			consumer.ConsumerOffset, consumer.StreamName.Name, consumer.ConsumerId.UUID.String(), consumer.EventName.Name)
	}
}