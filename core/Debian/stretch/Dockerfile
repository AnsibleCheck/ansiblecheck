FROM debian:stretch as builder
MAINTAINER Christopher Davenport

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       libffi-dev \
       libssl-dev \
       python-pip \
       python-dev \
       python-setuptools \
       python-wheel \
    # && pip install --upgrade pip \
    && pip install \
        ansible \
        cryptography \
        yamllint \
        ansible-lint

FROM debian:stretch
COPY --from=builder /usr/local/ /usr/local/
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       systemd-sysv \
       sudo \
       libffi6 \
       python \
       ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc \
    && rm -Rf /usr/share/man \
    && apt-get clean \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts
