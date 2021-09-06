FROM golang:1.16-alpine as build
COPY . /app/
WORKDIR /app
RUN go get && go build -o netflixv6

FROM alpine:latest
COPY --from=build /app/netflixv6 /
ENTRYPOINT /netflixv6
CMD ["-d"]
