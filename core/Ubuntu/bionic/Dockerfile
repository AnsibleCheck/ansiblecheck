FROM ubuntu:bionic as builder
MAINTAINER Christopher Davenport

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libffi-dev \
        libssl-dev \
        python3-pip \
        python3-dev \
        python3-setuptools \
        python3-wheel \
    && pip3 install \
        ansible \
        cryptography \
        yamllint \
        ansible-lint

FROM ubuntu:bionic
COPY --from=builder /usr/local/ /usr/local/
# Install Bundle And Clean Excess
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        rsyslog \
        systemd \
        systemd-cron \
        sudo \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && touch -m -t 200101010101.01 /var/lib/apt/periodic/update-success-stamp \
    && apt-get clean \
    && mkdir -p /etc/ansible
COPY hosts /etc/ansible/
