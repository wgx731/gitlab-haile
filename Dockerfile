FROM python:2-alpine
MAINTAINER Wang Eric GaoXiang <wgx731@gmail.com>

# 1. install packages through apk, pip and npm
# 2. setup working directory
# 3. runner home directory
# 4. create runner user
RUN apk update && \
    apk add bash=4.4.19-r1 \
    npm=8.11.4-r0 && \
    pip install apimatic-cli==2.3 && \
    npm i -g restdocs-to-postman@v2.0.0 && \
    mkdir -p /playground && \
    mkdir -p /runner && \
    adduser \
      -h /runner \
      -g "App runner" \
      -s /bin/bash \
      -D \
      -u 9527 \
      runner && \
    echo "runner ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    chown -R 9527:9527 /playground

# change to runner user
USER runner

# change to working directory
WORKDIR /playground

# deafult command 
CMD bash
