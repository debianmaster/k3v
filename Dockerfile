FROM golang AS build

RUN git clone https://github.com/lalyos/k3v.git /go/src/github.com/ibuildthecloud/k3v
WORKDIR /go/src/github.com/ibuildthecloud/k3v
RUN go build -v -o /tmp/k3v

FROM debian
COPY --from=build /tmp/k3v /usr/local/bin/k3v