
# Event server

## Description

Server with HTTP API to manage events and consumer offsets

## API

### Receiving an event for a specific stream

```http
POST /api/v1/streams/<streamName>/events
--
HEADERS:
	Accept: application/json; charset=utf-8
	Content-Type: application/json; charset=utf-8
	Authorization: Basic <base64>
	X-Producer-ID: <producerID>
--
BODY:
{
	"event": {
		"name" : "OrderPlaced",
		"version" : 1
	},
	"system" : {
		"id" : "alv123",
		"name" :"codello alvine",
		"time": "2017-09-06 13:58:12",
		"timezone" : "Europe/Berlin"		
	},	
	"trigger" : {
		"type": "system",
		"name": "/path/to/script.php"
	},
	"payload" : {} 
}
```

**Possible responses:**

All responses should send the header `Content-Type: application/json; charset=utf-8`.

| HTTP code | Output                                | Comment                                                   |
|-----------|---------------------------------------|-----------------------------------------------------------|
| 200       | "<eventID>"                           | The newly created event ID                                |
| 423       | "Locked - Second writers not allowed" | A producer tries to write to a stream of another producer |
| 401       | "Unauthorized"                        | Invalid credentials                                       |
| 400       | "Bad Request - <error>"               | Error if the request is malformed                         | 
| 500       | "Internal Server Error - <error>"     | Any other error                                           | 

### Providing events from a specific stream for consumption

```http
GET /api/v1/streams/<streamName>/events
--
PARAMETERS:
	eventName=[string] (mandatory)
	limit=[int] (mandatory)
--
HEADERS:
	Accept: application/json; charset=utf-8
	Content-Type: application/json; charset=utf-8
	Authorization: Basic <base64>
	X-Consumer-ID: <consumerID>
```

**Possible responses:**

All responses should send the header `Content-Type: application/json; charset=utf-8`.

| HTTP code | Output                                | Comment                                    |
|-----------|---------------------------------------|--------------------------------------------|
| 200       | `array of JSON events`                | A list of events from the requested stream |
| 401       | "Unauthorized"                        | Invalid credentials                        |
| 404       | "Not Found[ - <message>]"             | Error if the stream was not found          |
| 400       | "Bad Request - <error>"               | Error if the request is malformed          | 
| 500       | "Internal Server Error - <error>"     | Any other error                            |

### Receive an acknowledgement after an event consumption

```http
POST /api/v1/streams/<streamName>/events/<eventID>
--
HEADERS:
	Accept: application/json; charset=utf-8
	Content-Type: application/x-www-form-urlencoded
	Authorization: Basic <base64>
	X-Consumer-ID: <consumerID>
--
BODY:
action=ACK
```

**Possible responses:**

All responses should send the header `Content-Type: application/json; charset=utf-8`.

| HTTP code | Output                                | Comment                                       |
|-----------|---------------------------------------|-----------------------------------------------|
| 200       | "OK"                                  | Acknowledgement received                      |
| 401       | "Unauthorized"                        | Invalid credentials                           |
| 404       | "Not Found"                           | Error if the stream or event ID was not found |
| 400       | "Bad Request - <error>"               | Error if the request is malformed             | 
| 500       | "Internal Server Error - <error>"     | Any other error                               |

---

### Authorisation

* Create new read/write route and corresponding request handler.
* Implement the PreAuthenticatesToken interface in the request handler
* Now the route can be called with valid credentials (basic auth) only. Otherwise the unauthorized response will be returned. 
* In case you don't want the route to be secured, just create request handler without implementing the PreAuthenticatesToken interface

## Local development

### Bring up the environment

```bash
docker-composer up -d
```
