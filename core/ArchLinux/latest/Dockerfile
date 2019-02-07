FROM archlinux/base
MAINTAINER Christopher Davenport

RUN pacman -Sy --needed --noconfirm sudo which systemd \
      ansible ansible-lint yamllint \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]
