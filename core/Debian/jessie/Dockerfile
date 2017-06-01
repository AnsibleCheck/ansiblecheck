FROM debian:jessie-backports
MAINTAINER Christopher Davenport

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       apt-utils \
    && apt-get install -y --no-install-recommends \
       sudo \
       build-essential \
       libffi-dev \
       libssl-dev \
       python-pip \
       python-dev \
       python-wheel \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && apt-get clean \
    && pip install --upgrade pip \
# now using new pip version installed in /usr/local/bin
    && /usr/local/bin/pip install \
        ansible \
        cryptography \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
