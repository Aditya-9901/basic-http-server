FROM golang:1.19

WORKDIR /dockerize-test

COPY go.mod ./
RUN go mod download

COPY . .

CMD ["go", "run", "main.go"]

EXPOSE 9090
