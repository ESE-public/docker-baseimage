# PMET baseimage

This image adds the following defaults to the [phusion/baseimage](https://github.com/phusion/baseimage-docker):

- LANG=en_US.UTF-8
- TERM=xterm-256color

It also allows the passing of a SETUP_SCRIPT via the env rather than copying or linking it to /etc/my_init.d/.
Lastly, it includes the latest statically linked docker binary which can be used in privileged mode (useful to discover dynamic ports from within the container).
