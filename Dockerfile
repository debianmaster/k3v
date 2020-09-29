<<<<<<< HEAD
FROM curlimages/curl
WORKDIR /tmp
RUN wget https://github.com/ibuildthecloud/k3v/releases/download/v0.0.1/k3v-linux-amd64 \
    && chmod +x k3v-linux-amd64 \
    && mv k3v-linux-amd64 /usr/local/bin/k3v
CMD ["k3v"]
=======
FROM golang AS build

RUN git clone https://github.com/lalyos/k3v.git /go/src/github.com/ibuildthecloud/k3v
WORKDIR /go/src/github.com/ibuildthecloud/k3v
RUN go build -v -o /tmp/k3v

FROM debian
COPY --from=build /tmp/k3v /usr/local/bin/k3v
>>>>>>> 680634ff07c526649430f07b483c1eee2f1ad007
