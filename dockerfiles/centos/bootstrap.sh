#!/bin/bash
yum update
yum install -y gcc make
bash autogen.sh
./configure
make
make install
mkdir /libfabric/libfabric_libs
cp -P /libfabric/src/.libs/libfabric* libfabric_libs/.


