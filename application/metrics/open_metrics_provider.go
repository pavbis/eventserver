package metrics

import (
	"github.com/pavbis/eventserver/application/repositories"
	"github.com/prometheus/client_golang/prometheus"
)

type OpenMetricsCollector struct {
	metricsStorage    repositories.MetricsData
	streams           *prometheus.Desc
	eventsInStream    *prometheus.Desc
	consumersInStream *prometheus.Desc
	consumersOffsets  *prometheus.Desc
}

// NewOpenMetricsCollector creates new instance of the metrics collector
func NewOpenMetricsCollector(s repositories.MetricsData) *OpenMetricsCollector {
	return &OpenMetricsCollector{
		metricsStorage:    s,
		streams:           newStreamsMetric(),
		eventsInStream:    newEventsInStreamMetric(),
		consumersInStream: newConsumersInStreamMetric(),
		consumersOffsets:  newConsumersOffsetsMetric(),
	}
}

func (o *OpenMetricsCollector) Describe(channel chan<- *prometheus.Desc) {
	channel <- o.streams
	channel <- o.consumersOffsets
	channel <- o.eventsInStream
	channel <- o.consumersInStream
}

func (o *OpenMetricsCollector) Collect(channel chan<- prometheus.Metric) {
	streamsTotal, err := o.metricsStorage.StreamsTotal()

	if err != nil {
		return
	}

	eventsInStream, err := o.metricsStorage.EventsInStreamsWithOwner()

	if err != nil {
		return
	}

	consumersInStream, err := o.metricsStorage.ConsumersInStream()

	if err != nil {
		return
	}

	consumersOffsets, err := o.metricsStorage.ConsumersOffsets()

	if err != nil {
		return
	}

	channel <- prometheus.MustNewConstMetric(o.streams, prometheus.CounterValue, streamsTotal.Value)

	for _, streamTotals := range eventsInStream {
		channel <- prometheus.MustNewConstMetric(
			o.eventsInStream,
			prometheus.CounterValue,
			streamTotals.EventCount, streamTotals.ProducerID.UUID, streamTotals.StreamName.Name)
	}

	for _, consumer := range consumersInStream {
		channel <- prometheus.MustNewConstMetric(
			o.consumersInStream, prometheus.CounterValue, consumer.ConsumerCount, consumer.StreamName.Name)
	}

	for _, consumer := range consumersOffsets {
		channel <- prometheus.MustNewConstMetric(
			o.consumersOffsets,
			prometheus.GaugeValue,
			consumer.ConsumerOffset, consumer.StreamName.Name, consumer.ConsumerID.UUID.String(), consumer.EventName.Name)
	}
}
