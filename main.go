package main

import (
	"github.com/pavbis/eventserver/api"
)

func main() {
	s := api.Server{}
	s.Initialize()
	s.Run(":8000")
}
