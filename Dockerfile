FROM archlinux:base-devel-20201123.0.9844

COPY cri-mirror /cri-mirror
RUN cat /cri-mirror >> /etc/pacman.conf

RUN pacman -Syyu --noconfirm \
    clang autoconf-archive cmake python-pytest criterion \
    && pacman -Scc --noconfirm

COPY clang-format /.clang-format
