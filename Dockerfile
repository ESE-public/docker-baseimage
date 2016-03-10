FROM phusion/baseimage:0.9.18
MAINTAINER Keith Bentrup <kbentrup@magento.com>

COPY setup-via-env.sh /etc/my_init.d/

# turn on log compression
RUN sed -i 's/^#compress/compress/' /etc/logrotate.conf 
