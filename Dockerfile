FROM ubuntu:focal

COPY install-packages /usr/bin

### base ###
ARG DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize \
    && install-packages \
        zip \
        unzip \
        bash-completion \
        build-essential \
        htop \
        less \
        locales \
        software-properties-common \
        sudo \
        time \
        vim \
        ssl-cert \
        git \
        python3-pip \
        gawk \
        wget \
        diffstat \
        unzip \
        texinfo \
        gcc \
        build-essential \
        chrpath \
        socat \
        cpio \
        python3 \
        python3-pexpect \
        xz-utils \
        debianutils \
        iputils-ping \
        python3-git \
        python3-jinja2 \
        libegl1-mesa \
        libsdl1.2-dev \
        pylint \
        xterm \
        python3-subunit \
        mesa-common-dev \
        lz4 \
        zstd \
        file \
        iproute2 \
        openssh-client \
    && locale-gen en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN pip3 install kas
