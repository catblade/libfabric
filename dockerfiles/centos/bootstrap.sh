#!/bin/bash
yum update
yum install -y gcc make
bash autogen.sh
./configure
make
make install
ldconfig
fi_info
