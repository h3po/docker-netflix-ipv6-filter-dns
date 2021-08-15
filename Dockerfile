FROM golang:1.16-alpine

COPY . /app/
WORKDIR /app

RUN go get && go build

ENTRYPOINT /app/netflix-v4 
CMD ["-d"]
