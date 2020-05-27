package input

import "errors"

// invalid consumer id error
var ErrConsumerId = errors.New("missing or invalid consumer id provided")

// invalid event id error
var ErrEventId = errors.New("missing or invalid event id provided")

// invalid limit error
var ErrLimit = errors.New("limit argument is not valid")
