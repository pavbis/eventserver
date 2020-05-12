package commands

type ReceiveEventCommand struct {
	EventId    string
	ProducerId string
	StreamName string
	EventJson  string
}
