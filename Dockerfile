FROM curlimages/curl
ENV ID=1
WORKDIR /tmp
RUN wget https://github.com/ibuildthecloud/k3v/releases/download/v0.0.1/k3v-linux-amd64 \
    && chmod +x k3v-linux-amd64 \
    && mv k3v-linux-amd64 /usr/local/bin/k3v
CMD ["k3v"]
