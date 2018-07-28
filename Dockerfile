FROM docker:18.06.0-ce
MAINTAINER Wang Eric GaoXiang <wgx731@gmail.com>

# 1. install packages through apk
# 2. setup working directory
# 3. runner home directory
# 4. create runner user
RUN apk update && \
  apk add openjdk8=8.171.11-r0 \
    bash=4.4.19-r1 && \
    mkdir -p /playground && \
    mkdir -p /runner && \
    adduser \
      -h /runner \
      -s /bin/bash \
      -D \
      -u 9527 \
      runner

# change to runner user
USER runner

# change to working directory
WORKDIR /playground

# deafult command 
CMD bash
