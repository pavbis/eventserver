FROM golang:alpine AS build_base
RUN apk add --no-cache git
WORKDIR /build
COPY . /build
RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -x -installsuffix cgo -o eventserver .

# Build the Go app
RUN go build -o ./out/eventserver .

FROM alpine:latest
RUN apk add ca-certificates
WORKDIR /app
COPY --from=build_base /build/eventserver .
EXPOSE 8000
ENTRYPOINT ["./eventserver"]

