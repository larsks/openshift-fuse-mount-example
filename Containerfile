FROM quay.io/fedora/fedora:40

RUN yum -y install bindfs s3fs-fuse fuse-zip archivemount fuse-sshfs squashfuse \
  vim-enhanced curl fuse-overlayfs podman

RUN useradd -u 1000 -c 'Fedora User' -d /home/fedora fedora

ENV HOME=/home/fedora
