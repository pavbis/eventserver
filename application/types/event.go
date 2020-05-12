package types

import (
	"encoding/json"
)

type (
	System struct {
		ID       string `json:"id"`
		Name     string `json:"name"`
		Time     string `json:"time"`
		Timezone string `json:"timezone"`
	}

	Trigger struct {
		Type string `json:"type"`
		Name string `json:"name"`
	}

	Payload struct{}

	EventData struct {
		Name    string `json:"name" validate:"required"`
		Version string `json:"version"`
	}
)

type Event struct {
	EventId   string
	EventData `json:"event"`
	System    `json:"system"`
	Trigger   `json:"trigger"`
	Payload   `json:"payload"`
}

func (e *Event) ToJSON() string {
	var jsonData []byte
	jsonData, err := json.Marshal(e)
	if err != nil {
		return ""
	}

	return string(jsonData)
}
