package input

import "errors"

// ErrConsumerID invalid consumer id error
var ErrConsumerID = errors.New("missing or invalid consumer id provided")

// ErrEventID invalid event id error
var ErrEventID = errors.New("missing or invalid event id provided")

// ErrLimit invalid limit error
var ErrLimit = errors.New("limit argument is not valid")

// ErrConsumerOffset invalid offset error
var ErrConsumerOffset = errors.New("offset argument is not valid")
