package input

import "errors"

// ErrConsumerId invalid consumer id error
var ErrConsumerId = errors.New("missing or invalid consumer id provided")

// ErrEventId invalid event id error
var ErrEventId = errors.New("missing or invalid event id provided")

// ErrLimit invalid limit error
var ErrLimit = errors.New("limit argument is not valid")

// ErrConsumerOffset invalid offset error
var ErrConsumerOffset = errors.New("offset argument is not valid")
