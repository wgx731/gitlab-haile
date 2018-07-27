FROM alpine:3.8
MAINTAINER Wang Eric GaoXiang <wgx731@gmail.com>

# install packages and setup working directory
RUN apk update && \
  apk add docker=18.03.1-r0 && \
  apk add openjdk8=8.171.11-r0 && \
  apk add bash4.4.19-r1 && \
  mkdir -p /build

# running as guest user
USER guest

# create working directory
WORKDIR /build

# deafult command 
CMD bash
