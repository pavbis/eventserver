package types

import "github.com/google/uuid"

// EventId represents event id
type EventId struct {
	UUID uuid.UUID `json:"uuid"`
}
