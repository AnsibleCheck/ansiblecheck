FROM ubuntu:yakkety
MAINTAINER Christopher Davenport

# Install Bundle And Clean Excess
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       software-properties-common \
       python-software-properties \
    && apt-get install -y --no-install-recommends \
       ansible \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && touch -m -t 200101010101.01 /var/lib/apt/periodic/update-success-stamp \
    && apt-get clean \
    && echo "[local]" > etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
