FROM rancher/os-ubuntuconsole-base
# FROM amd64=ubuntu:16.04 arm64=aarch64/ubuntu:16.04

RUN apt-get update && \
    apt-get install -y build-essential wget libncurses5-dev unzip bc curl python rsync ccache vim less cpio texinfo locales git

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

ENV DAPPER_SOURCE /source
ENV DAPPER_OUTPUT ./dist
ENV SHELL /bin/bash
ENV ARTIFACTS /usr/src
WORKDIR ${DAPPER_SOURCE}

ENV VERSION 2018.02.11-1
ENV TARBALL ${VERSION}.tar.gz
RUN cd ${ARTIFACTS} && \
    wget https://github.com/rancher/buildroot/archive/$TARBALL

ARG DAPPER_HOST_ARCH=amd64
ARG HOST_ARCH=${DAPPER_HOST_ARCH}
ARG ARCH=${HOST_ARCH}
ENV ARCH=${ARCH}
ENV HOST_ARCH=${HOST_ARCH}

ENTRYPOINT ["./scripts/entry"]
CMD ["ci"]
