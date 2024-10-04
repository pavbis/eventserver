ARG GO_VERSION=1.23.2

FROM golang:${GO_VERSION}-alpine AS build_base
WORKDIR /build
COPY . /build
RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -x -installsuffix cgo -o eventserver .

# Build the Go app
RUN go build -o ./out/eventserver .

FROM debian:buster-slim
RUN set -x && apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y ca-certificates && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY --from=build_base /build/eventserver .
EXPOSE 8081
ENTRYPOINT ["./eventserver"]
