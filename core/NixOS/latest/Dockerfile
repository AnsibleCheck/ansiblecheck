FROM nixos/nix
MAINTAINER Christopher Davenport

RUN nix-channel --add http://nixos.org/channels/nixpkgs-unstable \
    && nix-channel --update \
    && nix-env --install python2.7-ansible-2.2.1.0 \
    && mkdir -p /etc/ansible \
    && echo "[local]" > /etc/ansible/hosts \
    && echo "localhost ansible_connection=local" >> /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]
