FROM opensuse:42.2
MAINTAINER Christopher Davenport

RUN zypper addrepo http://download.opensuse.org/repositories/systemsmanagement/openSUSE_Leap_42.2/systemsmanagement.repo \
    && zypper refresh \
    && zypper install ansible \
    && sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]
