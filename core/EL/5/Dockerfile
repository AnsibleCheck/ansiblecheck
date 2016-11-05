FROM centos:5
MAINTAINER Christopher Davenport

RUN yum makecache fast \
    && yum -y update \
    && yum groupinstall \
        "Development tools" \
    && yum -y install \
        gcc \
        make \
        deltarpm \
        epel-release \
        initscripts \
        zlib-devel \
        bzip2-devel \
        openssl-devel \
        ncurses-devel \
        wget \
        tar \
    && yum clean all \
    && wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2 \
    && tar xf Python-2.7.3.tar.bz2 \
    && rm Python-2.7.3.tar.bz2 \
    && cd Python-2.7.3 \
    && ./configure --prefix=/usr/local/ \
    && make
    && make altinstall
    && /usr/local/bin/python2.7 \
    && set -o vi \
    && wget http://pypi.python.org/packages/source/d/distribute/distribute-0.6.27.tar.gz \
    && tar xf distribute-0.6.27.tar.gz \
    && rm distribute-0.6.27.tar.gz \
    && cd distribute-0.6.27 \
    && python2.7 setup.py install \
    && /usr/local/bin/easy_install-2.7 virtualenv \
    && /usr/local/bin/easy_install-2.7 pip \
    && pip install \
        ansible \
        cryptography \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

CMD ["/usr/sbin/init"]
