FROM golang:1.13.4-alpine

RUN mkdir /app
WORKDIR /app
ADD cov-analysis-linux64-2020.12.tar.gz /coverity
COPY license.dat /coverity/cov-analysis-linux64-2020.12/bin
COPY hello.go .
RUN /coverity/cov-analysis-linux64-2020.12/bin/cov-configure --go
RUN go build -o main .

CMD ["/app/main"]
