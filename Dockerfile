FROM golang:1.16-alpine AS builder

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /go-lang-challenge


CMD [ "/go-lang-challenge" ]
