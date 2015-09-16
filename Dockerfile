FROM phusion/baseimage
MAINTAINER Keith Bentrup <kbentrup@ebay.com>

ENV LANG=en_US.UTF-8 \
  TERM=xterm-256color

COPY setup-via-env.sh /etc/my_init.d/

