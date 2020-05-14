package types

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
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

	EventData struct {
		Name    string `json:"name" validate:"required"`
		Version int `json:"version"`
	}
)

type Payload map[string]interface{}

type Event struct {
	EventId    string `json:"eventId"`
	EventData `json:"event"`
	System    `json:"system"`
	Trigger   `json:"trigger"`
	Payload   `json:"payload"`
}

func (e Event) Value() (driver.Value, error) {
	return json.Marshal(e)
}

func (e *Event) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return errors.New("type assertion to []byte failed")
	}

	return json.Unmarshal(b, &e)
}

func (e *Event) ToJSON() string {
	var jsonData []byte
	jsonData, err := json.Marshal(e)
	if err != nil {
		return ""
	}

	return string(jsonData)
}
