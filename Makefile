.DEFAULT_GOAL := help
.SILENT:
.PHONY: vendor

## Colors
COLOR_RESET   = \033[0m
COLOR_INFO    = \033[32m
COLOR_COMMENT = \033[33m

## Help
help:
	printf "${COLOR_COMMENT}Usage:${COLOR_RESET}\n"
	printf " make [target]\n\n"
	printf "${COLOR_COMMENT}Available targets:${COLOR_RESET}\n"
	awk '/^[a-zA-Z\-\_0-9\.@]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf " ${COLOR_INFO}%-32s${COLOR_RESET} %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)



##################
# Useful targets #
##################

## Run golang ci lint with all linters.
go_lint_all:
	docker-compose run --rm linter golangci-lint run -v
.PHONY: go_lint_all

## Build app and start containers
build_app_and_start: build_app start_containers
.PHONY: build_app_and_start

## Build go binary.
build_app:
	docker-compose build --force-rm app
.PHONY: build_app

## Start containers.
start_containers:
	docker-compose up -d --force-recreate --remove-orphans
.PHONY: start_container

## Run tests with coverage.
run_tests_with_coverage:
	DATABASE_URL="user=root password=root dbname=testdb host=127.0.0.1 port=5432 sslmode=disable" go test -v -race -coverpkg=./... -coverprofile=coverage.txt ./...
	go tool cover -func coverage.txt
.PHONY: run_tests_with_coverage

## Run tests with coverage.
run_tests_and_open_coverage:
	DATABASE_URL="user=root password=root dbname=testdb host=127.0.0.1 port=5432 sslmode=disable" go test -v -race -coverpkg=./... -coverprofile=coverage.txt ./...
	go tool cover -html=coverage.txt
.PHONY: run_tests_with_coverage
