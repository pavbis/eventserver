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

## Run all quality assurance tools (tests and code inspection).
qa: go_fmt run_tests
.PHONY: qa

## Run go fmt.
go_fmt:
	gofmt -d ./
.PHONY: go_fmt

## Run tests.
run_tests:
	go test -v -coverpkg=./... -coverprofile=coverage.log ./...
.PHONY: run_tests

## Show coverage.
show_detailed_coverage:
	go tool cover -func coverage.log
.PHONY: show_detailed_coverage

## Build go binary.
build_app:
	docker-compose build app
.PHONY: build_app