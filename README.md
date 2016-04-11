# docker-glibc-builder [![Build Status](https://travis-ci.org/meyskens/docker-glibc-builder.svg?branch=master)](https://travis-ci.org/meyskens/docker-glibc-builder)

A glibc binary package builder in Docker based on `andyshinn/glibc-builder`. Produces a glibc binary package that can be imported into a rootfs to run applications dynamically linked against glibc.

## Usage

Build a glibc package based on version 2.23 with a prefix of `/usr/glibc-compat`:

```
docker run --rm -e STDOUT=1 meyskens/glibc-builder:amd64-latest 2.23 /usr/glibc-compat > glibc-bin.tar.gz
```

You can also keep the container around and copy out the resulting file:

```
docker run --name glibc-binary andyshinn/glibc-builder 2.23 /usr/glibc-compat
docker cp glibc-binary:/glibc-bin-2.23.tar.gz ./
docker rm glibc-binary
```
