FROM debian:latest
MAINTAINER Aleksey Kislitsa <aleksey.kislitsa@gmail.com>

# Install dependencies.
RUN \
      apt-get update && \
      DEBIAN_FRONTEND=noninteractive \
      apt-get install -y openvpn \
      && useradd -ms /bin/bash crazydiamond && adduser creazydiamond sudo && echo "test:test" | chpasswd
USER crazydiamond
WORKDIR /home/crazydiamond
