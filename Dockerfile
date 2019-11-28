FROM debian:buster-20191118-slim

ARG TRAVIS_VERSION

RUN apt-get update \
 && apt-get install -y ruby ruby-dev make gcc git libffi-dev \
 && rm -rf /var/lib/apt/lists/* \
 && gem install travis -v ${TRAVIS_VERSION} --no-rdoc --no-ri

# Travis configuration
ENV TRAVIS_CONFIG_PATH /travis
VOLUME /travis

# Repository where travis should be executed
VOLUME /repository
WORKDIR /repository

ENTRYPOINT ["/usr/local/bin/travis"]
