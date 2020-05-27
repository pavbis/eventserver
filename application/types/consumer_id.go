package types

import "github.com/google/uuid"

// represents the consumer id
type ConsumerId struct {
	UUID uuid.UUID `json:"uuid"`
}
