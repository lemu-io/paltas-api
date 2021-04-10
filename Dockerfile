FROM golang:1.14

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go build -o bin/api cmd/api/main.go
EXPOSE 3000

CMD ["bin/api"]