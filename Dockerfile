FROM ubuntu:24.04
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

# renovate: datasource=repology depName=chktex versioning=loose
ARG CHKTEX_VERSION="1.7.6-4"

RUN apt-get update && \
    apt-get install -y chktex=${CHKTEX_VERSION} && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
