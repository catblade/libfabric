#!/bin/bash
apt-get update
apt-get install -y dh-autoreconf
bash autogen.sh
./configure
make
make install
mkdir /libfabric/libfabric_libs
cp -P /libfabric/src/.libs/libfabric.* /libfabric/libfabric_libs/.




