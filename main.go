package main

import (
	"bitbucket.org/pbisse/eventserver/api"
)

var (
	dbUser     = "root"
	dbPassword = "root"
	dbName     = "testdb"
	dbHost     = "postgres"
	dbSSLMode  = "disable"
)

func main() {
	a := api.App{}
	a.Initialize(dbUser, dbPassword, dbName, dbHost, dbSSLMode)
	a.Run(":8000")
}
