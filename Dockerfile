FROM fedora:40

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

# grub2 repository
# rhboot   https://github.com/rhboot/grub2 \
# savannah git://git.savannah.gnu.org/grub.git
RUN git clone --depth 1 --single-branch -b grub-2.12 \
    git://git.savannah.gnu.org/grub.git \
    tools/grub2

# set default dir
WORKDIR tools/grub2/build
