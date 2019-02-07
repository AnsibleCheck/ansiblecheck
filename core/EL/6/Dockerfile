FROM centos:6
MAINTAINER Christopher Davenport

RUN yum makecache fast \
    && yum -y install \
        deltarpm \
        epel-release \
        initscripts \
    && yum -y update \
    && yum -y install \
        ansible \
        ansible-lint \
        sudo \
        which \
        python34 \
    && yum clean all

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python3 get-pip.py \
    && pip install \
      yamllint \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

CMD ["/usr/sbin/init"]
