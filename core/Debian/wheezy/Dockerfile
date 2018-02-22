FROM debian:wheezy-backports as builder
MAINTAINER Christopher Davenport

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
       cryptography

FROM debian:wheezy-backports
COPY --from=builder /usr/local/ /usr/local/
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      sudo \
      libffi5 \
      python \
      ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && apt-get clean \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
