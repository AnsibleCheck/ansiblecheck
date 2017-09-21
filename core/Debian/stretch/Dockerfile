FROM debian:stretch
MAINTAINER Christopher Davenport

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       systemd-sysv \
       sudo \
       build-essential \
       libffi-dev \
       libssl-dev \
       python-pip \
       python-dev \
       python-setuptools \
       python-wheel \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && apt-get clean \
    && pip install --upgrade pip \
    && pip install \
        ansible \
        cryptography \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
