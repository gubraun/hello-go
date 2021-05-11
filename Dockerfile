FROM golang:1.13.4-alpine

RUN mkdir /app
WORKDIR /app
ADD cov-analysis-linux64-2020.12.tar.gz /cov-analysis
COPY license.dat /cov-analysis/bin/
COPY hello.go .
RUN /cov-analysis/bin/cov-configure --go
RUN go build -o main .

CMD ["/app/main"]
