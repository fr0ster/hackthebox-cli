FROM debian:10
MAINTAINER Aleksey Kislitsa <aleksey.kislitsa@gmail.com>

LABEL hackthebox-cli latest

VOLUME ["/mnt"]

# Install dependencies.
RUN \
      apt-get update && \
      DEBIAN_FRONTEND=noninteractive \
      apt-get install -y openvpn gnupg2
RUN \
      useradd -ms /bin/bash crazydiamond && \
      adduser crazydiamond sudo && \
      echo "test:test" | chpasswd
USER crazydiamond
WORKDIR /home/crazydiamond
ENV HOME /home/crazydiamond


CMD ["/bin/bash"]
