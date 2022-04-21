FROM ubuntu:22.04
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

RUN apt-get update && \
    apt-get install -y chktex=1.7.6-3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
