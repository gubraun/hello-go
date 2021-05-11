FROM golang:1.13.4-alpine

RUN mkdir /app
WORKDIR /app
COPY . .
RUN ./cov-analysis/bin/cov-configure --go
RUN go build -o main .

CMD ["/app/main"]
