FROM ubuntu:precise
MAINTAINER Christopher Davenport

# Install Bundle And Clean Excess
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       ca-certificates \
       build-essential \
       libffi-dev \
       libssl-dev \
       python-pip \
       python-dev \
    && /usr/bin/pip install --upgrade pip \
    && /usr/local/bin/pip install \
        ansible \
        cryptography \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && touch -m -t 200101010101.01 /var/lib/apt/periodic/update-success-stamp \
    && apt-get clean \
    && mkdir -p /etc/ansible \
    && echo "[local]" > etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
