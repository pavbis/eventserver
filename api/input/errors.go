package input

import "errors"

var ErrConsumerId = errors.New("missing or invalid consumer id provided")
var ErrEventId = errors.New("missing or invalid event id provided")
var ErrLimit = errors.New("limit arguments is not valid")
