FROM centos:5
MAINTAINER Christopher Davenport

RUN yum makecache fast \
    && yum -y update \
    && yum -y install \
        deltarpm \
        epel-release \
        initscripts \
    && yum -y update \
    && yum -y install \
        sudo \
        which \
        python-setuptools \
        python-setuptools-devel \
    && yum clean all \
    && easy_install pip \
    && pip install \
        ansible \
        cryptography \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

CMD ["/usr/sbin/init"]
