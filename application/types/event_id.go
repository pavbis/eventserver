package types

import "github.com/google/uuid"

type EventId struct {
	UUID uuid.UUID `json:"uuid"`
}
