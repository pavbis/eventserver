FROM golang:1.14
WORKDIR /build
COPY . /build
RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -x -installsuffix cgo -o eventserver .

FROM alpine:latest
WORKDIR /app
COPY --from=0 /build/eventserver .
EXPOSE 8000
ENTRYPOINT ["./eventserver"]

