#!/bin/bash
yum update
yum install -y gcc make autoconf automake libtool
bash autogen.sh
autoreconf -ivh #here because from git dates need updated
./configure
make
make install
mkdir /libfabric/libfabric_libs
cp -P /libfabric/src/.libs/libfabric* libfabric_libs/.
