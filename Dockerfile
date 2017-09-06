FROM golang:1.7-alpine
MAINTAINER chub@users.noreply.github.com

RUN apk add --no-cache git
RUN go get github.com/tools/godep

ADD . $GOPATH/src/github.com/chub/bitly-oauth2_proxy

WORKDIR $GOPATH/src/github.com/chub/bitly-oauth2_proxy

RUN godep go install github.com/chub/bitly-oauth2_proxy

ENTRYPOINT ["bitly-oauth2_proxy"]
