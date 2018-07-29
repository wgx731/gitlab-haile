FROM python:2-alpine
MAINTAINER Wang Eric GaoXiang <wgx731@gmail.com>

# 1. install packages through apk and pip
# 2. setup working directory
# 3. runner home directory
# 4. create runner user
RUN apk update && \
  apk add openjdk8=8.171.11-r0 \
    bash=4.4.19-r1 \
    npm=8.11.3-r1 && \
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
    echo "runner ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


# change to runner user
USER runner

# change to working directory
WORKDIR /playground

# deafult command 
CMD bash
