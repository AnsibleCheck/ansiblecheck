FROM oraclelinux:6.8
MAINTAINER Christopher Davenport

RUN yum makecache fast \
    && yum -y install wget; \
    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm; \
    rpm -ivh epel-release-latest-6.noarch.rpm; \
    yum -y update; yum clean all; \
    yum -y install \
        deltarpm \
        epel-release \
        initscripts \
    && yum -y update \
    && yum -y install \
        ansible \
        sudo \
        which \
    && yum clean all \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

CMD ["/usr/sbin/init"]
