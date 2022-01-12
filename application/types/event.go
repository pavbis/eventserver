package types

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
)

type (
	// System represents the system which sends the event
	System struct {
		ID       string `json:"id"`
		Name     string `json:"name"`
		Time     string `json:"time"`
		Timezone string `json:"timezone"`
	}

	// Trigger represents the trigger
	Trigger struct {
		Type string `json:"type"`
		Name string `json:"name"`
	}

	// EventData contains event name and version
	EventData struct {
		Name    string `json:"name" validate:"required"`
		Version int    `json:"version"`
	}
)

// Payload represents event payload
type Payload map[string]interface{}

// Event represents event
type Event struct {
	EventID   string `json:"eventId"`
	EventData `json:"event"`
	System    `json:"system"`
	Trigger   `json:"trigger"`
	Payload   `json:"payload"`
}

// Value returns marshaled event
func (e Event) Value() (driver.Value, error) {
	return json.Marshal(e)
}

// Scan unmarshal the event or returns error
func (e *Event) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return errors.New("type assertion to []byte failed")
	}

	return json.Unmarshal(b, &e)
}

// ToJSON converts event to json
func (e *Event) ToJSON() string {
	var jsonData []byte
	jsonData, err := json.Marshal(e)
	if err != nil {
		return ""
	}

	return string(jsonData)
}
