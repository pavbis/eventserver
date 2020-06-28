package main

import (
	"bitbucket.org/pbisse/eventserver/api"
)

func main() {
	s := api.Server{}
	s.Initialize()
	s.Run(":8000")
}
