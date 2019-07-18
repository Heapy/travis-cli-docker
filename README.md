# travis-cli-docker

[![Build Status](https://travis-ci.com/Heapy/travis-cli-docker.svg?branch=master)](https://travis-ci.com/Heapy/travis-cli-docker)

Travis [cli gem](https://github.com/travis-ci/travis.rb) packed in docker for use on developers machines

## Usage

Define alias for running container:

```bash
alias travis='docker run --rm -it -v $PWD:/repository -v ~/.travis:/travis heapy/travis-cli-docker';
```

### Login:

```bash
travis login --com
```

### Encrypt file:

```bash
travis encrypt-file file.txt
```

## Release process

Create new tag with travis gem version and push it. Travis will build container and push it to registry.
