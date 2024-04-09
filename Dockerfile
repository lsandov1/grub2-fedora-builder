FROM fedora:39

RUN dnf install -y \
    autoconf \
    automake \
    bison \
    flex \
    gcc \
    gettext-devel \
    git \
    make \
    patch \
    pesign \
    python \
    redhat-rpm-config

# build tools from Peter Jones repo
RUN git clone --depth 1 --single-branch -b tools \
    https://github.com/vathpela/grub2-fedora.git \
    tools

# grub2 fedora-39 repository
RUN git clone --depth 1 --single-branch -b fedora-39 \
    https://github.com/rhboot/grub2 \
    tools/grub2

# create a build folder
RUN mkdir build

# set default dir
WORKDIR tools/grub2/build
