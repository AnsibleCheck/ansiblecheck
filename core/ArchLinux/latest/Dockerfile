FROM dock0/arch
MAINTAINER Christopher Davenport

RUN pacman -Syu --noconfirm ansible sudo which initscripts \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]
