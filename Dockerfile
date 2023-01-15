FROM golang:1.16-alpine AS builder

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /go-lang-challenge

FROM scratch

COPY --from=builder /go-lang-challenge /go-lang-challenge

CMD [ "/go-lang-challenge" ]
