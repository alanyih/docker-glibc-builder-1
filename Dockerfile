#FROM multiarch/ubuntu-debootstrap:amd64-xenial # arch=amd64
#FROM multiarch/ubuntu-debootstrap:armhf-xenial # arch=armhf
#FROM multiarch/ubuntu-debootstrap:i386-xenial # arch=i386
ENV PREFIX_DIR /usr/glibc-compat
ENV GLIBC_VERSION 2.23
RUN apt-get -q update \
	&& apt-get -qy install build-essential wget openssl gawk
COPY overlay-common/configparams /glibc-build/configparams
COPY overlay-common/builder /builder
ENTRYPOINT ["/builder"]
