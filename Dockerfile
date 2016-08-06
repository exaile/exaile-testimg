
FROM docker.io/exaile/gst-python:latest
MAINTAINER Dustin Spicuzza <dustin@virtualroadside.com>

RUN true \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    python-pytest \
    python-mox3 \
    make \
  && rm -rf /var/lib/apt/lists/*
  
ENTRYPOINT []