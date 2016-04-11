FROM multiarch/ubuntu-debootstrap:amd64-trusty
#FROM multiarch/ubuntu-core:armhf-trusty # arch=armhf
#FROM multiarch/ubuntu-core:i368-trusty # arch=i368
ENV PREFIX_DIR /usr/glibc-compat
ENV GLIBC_VERSION 2.23
RUN apt-get -q update \
	&& apt-get -qy install build-essential wget openssl gawk
COPY configparams /glibc-build/configparams
COPY builder /builder
ENTRYPOINT ["/builder"]
