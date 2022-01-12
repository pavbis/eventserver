package types

import "github.com/google/uuid"

// ConsumerID represents the consumer id
type ConsumerID struct {
	UUID uuid.UUID `json:"uuid"`
}
