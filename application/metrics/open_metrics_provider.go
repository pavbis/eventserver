package metrics

import (
	"bitbucket.org/pbisse/eventserver/application/repositories"
	"github.com/prometheus/client_golang/prometheus"
)

type openMetricsCollector struct {
	metricsStorage    repositories.MetricsData
	streams           *prometheus.Desc
	eventsInStream    *prometheus.Desc
	consumersInStream *prometheus.Desc
	consumersOffsets  *prometheus.Desc
}

// NewOpenMetricsCollector creates new instance of the metrics collector
func NewOpenMetricsCollector(s repositories.MetricsData) *openMetricsCollector {
	return &openMetricsCollector{
		metricsStorage:    s,
		streams:           newStreamsMetric(),
		eventsInStream:    newEventsInStreamMetric(),
		consumersInStream: newConsumersInStreamMetric(),
		consumersOffsets:  newConsumersOffsetsMetric(),
	}
}

func (o *openMetricsCollector) Describe(channel chan<- *prometheus.Desc) {
	channel <- o.streams
	channel <- o.consumersOffsets
	channel <- o.eventsInStream
	channel <- o.consumersInStream
}

func (o *openMetricsCollector) Collect(channel chan<- prometheus.Metric) {
	streamsTotal, err := o.metricsStorage.StreamsTotal()
	eventsInStream, err := o.metricsStorage.EventsInStreamsWithOwner()
	consumersInStream, err := o.metricsStorage.ConsumersInStream()
	consumersOffsets, err := o.metricsStorage.ConsumersOffsets()

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
