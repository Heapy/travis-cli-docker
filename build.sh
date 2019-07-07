#!/bin/bash -e

if [[ -z TRAVIS_TAG ]]; then
  docker build --build-arg "TRAVIS_VERSION=${TRAVIS_TAG}" -t "heapy/travis-cli-docker:${TRAVIS_TAG}" -t "heapy/travis-cli-docker:latest" ./
else
  echo "Skipping Docker Build"
fi
