#!/bin/sh

sudo yum -y install rpm-build rpmdevtools protobuf-compiler protobuf-devel libutempter-devel zlib-devel ncurses-devel openssh-clients perl-IO-Tty openssl-devel gcc gcc-c++
rpmdev-setuptree
cd ~/rpmbuild/SOURCES
wget http://mosh.mit.edu/mosh-1.2.4.tar.gz
cd ~/rpmbuild/SPECS
rm mosh.spec*
wget https://raw.github.com/keithw/mosh/master/fedora/mosh.spec
rpmbuild -bb mosh.spec
ARCH=`uname -m`
sudo rpm -Uvh ~/rpmbuild/RPMS/${ARCH}/mosh-1.2.4-1.el6.${ARCH}.rpm
