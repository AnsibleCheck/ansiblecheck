FROM debian:wheezy-backports
MAINTAINER Christopher Davenport

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       sudo \
       ca-certificates \
       build-essential \
       libffi-dev \
       libssl-dev \
       python-pip \
       python-dev \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && apt-get clean \
    && /usr/bin/pip install --upgrade pip \
    && /usr/local/bin/pip install \
        ansible \
        cryptography \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
