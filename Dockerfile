FROM golang:1.17.0-alpine as build-env
RUN GO111MODULE=on go get -v github.com/tomnomnom/anew

FROM alpine:3.14
COPY --from=build-env /go/bin/anew /usr/local/bin/anew
ENTRYPOINT ["anew"]
