FROM alpine:latest
ARG ACCESS_ID
ARG ACCESS_KEY
ARG REGION_ID

RUN apk add --no-cache jq
RUN wget https://aliyuncli.alicdn.com/aliyun-cli-linux-3.0.2-amd64.tgz
RUN tar -xvzf aliyun-cli-linux-3.0.2-amd64.tgz
RUN rm aliyun-cli-linux-3.0.2-amd64.tgz
RUN mv aliyun /usr/local/bin/

