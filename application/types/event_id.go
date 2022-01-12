package types

import "github.com/google/uuid"

// EventID represents event id
type EventID struct {
	UUID uuid.UUID `json:"uuid"`
}
