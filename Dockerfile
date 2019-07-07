FROM debian:buster-slim

ARG TRAVIS_VERSION

RUN apt-get update \
 && apt-get install -y ruby ruby-dev make gcc libffi-dev \
 && rm -rf /var/lib/apt/lists/* \
 && gem install travis -v ${TRAVIS_VERSION} --no-rdoc --no-ri

# Travis configuration
VOLUME /travis

# Repository where travis should be executed
VOLUME /repository
WORKDIR /repository

ENTRYPOINT ["/usr/local/bin/travis"]
