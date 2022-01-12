package types

import (
	"encoding/json"
	"reflect"
	"strings"
	"testing"
)

func TestEvent_Value(t *testing.T) {
	var event Event
	payload := `{
   "event":{
      "name":"ExampleEventThree",
      "version":1
   },
   "system":{
      "id":"alv123",
      "name":"codello alvine",
      "time":"2019-09-06 15:59:12",
      "timezone":"Europe/Berlin"
   },
   "payload":{
	  "foo": "bar",
	  "hello" : "gopher"
   },
   "trigger":{
      "name":"/path/to/script",
      "type":"system"
   }
}`
	decoder := json.NewDecoder(strings.NewReader(payload))
	eventID := "a8bae54a-7fdc-483b-8c8f-dc8e6edbdc83"
	_ = decoder.Decode(&event)
	event.EventID = eventID
	eventValue, _ := event.Value()
	resultType := reflect.TypeOf(eventValue).Kind()

	if resultType != reflect.Slice {
		t.Errorf("Got result %v, expected %v", resultType, reflect.Slice)
	}
}

func TestEvent_ScanError(t *testing.T) {
	event := &Event{}
	err := event.Scan(111)

	if err == nil {
		t.Fatalf("EventScan: %v", err)
	}
}
