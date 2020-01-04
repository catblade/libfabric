#!/bin/bash
apt-get update
apt-get install -y dh-autoreconf
bash autogen.sh
./configure
make
make install
rm -rf /libfabric
apt-get remove -y dh-autoreconf
apt-get clean -y
rm -rf \
   /var/cache/debconf/* \
   /var/lib/apt/lists/* \
   /var/log/* \
   /tmp/* \
   /var/tmp/*
ldconfig
fi_info
