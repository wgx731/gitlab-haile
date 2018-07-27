FROM alpine:3.8
MAINTAINER Wang Eric GaoXiang <wgx731@gmail.com>

# 1. install packages through apk
# 2. setup working directory
# 3. create runner user
RUN apk update && \
  apk add docker=18.03.1-r0 \
    openjdk8=8.171.11-r0 \
    bash=4.4.19-r1 && \
    mkdir -p /build && \
    adduser \
      -h /build \
      -s /bin/bash \
      -D \
      -u 9527 \
      runner

# change to runner user
USER runner

# create working directory
WORKDIR /build

# deafult command 
CMD bash
