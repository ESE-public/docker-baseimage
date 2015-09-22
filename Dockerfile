FROM phusion/baseimage
MAINTAINER Keith Bentrup <kbentrup@ebay.com>

ENV LANG=en_US.UTF-8 \
  TERM=xterm-256color

COPY setup-via-env.sh /etc/my_init.d/

RUN curl https://get.docker.com/builds/Linux/x86_64/docker-latest -o /usr/bin/docker && \
  chmod +x /usr/local/bin/docker
