#!/bin/sh

yum -y install rpm-build rpmdevtools protobuf-compiler protobuf-devel libutempter-devel zlib-devel ncurses-devel openssh-clients perl-IO-Tty
rpmdev-setuptree
cd ~/rpmbuild/SOURCES
https://github.com/downloads/keithw/mosh/mosh-1.2.tar.gz
cd ~/rpmbuild/SPECS
wget https://raw.github.com/glidenote/mosh-1.2-rpm/master/mosh12.spec
rpmbuild -bb mosh12.spec
ARCH=`uname -m`