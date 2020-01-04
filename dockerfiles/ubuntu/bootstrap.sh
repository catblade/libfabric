#!/bin/bash
apt-get update
apt-get install -y dh-autoreconf
bash autogen.sh
./configure
make
make install
ldconfig
fi_info
