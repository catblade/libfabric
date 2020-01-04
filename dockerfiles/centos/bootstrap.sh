#!/bin/bash
yum update
yum install -y gcc make
bash autogen.sh
./configure
make
make install
rm -rf /libfabric
yum remove -y gcc make
yum clean all
ldconfig
fi_info
