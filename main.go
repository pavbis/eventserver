package main

import (
	"bitbucket.org/pbisse/eventserver/api"
)

func main() {
	a := api.App{}
	a.Initialize()
	a.Run(":8000")
}
