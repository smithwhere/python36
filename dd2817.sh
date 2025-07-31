#!/bin/sh
apt-get update && apt upgrade -y
apt-get install build-essential zlib1g-dev libncurses5-dev libreadline-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev checkinstall libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y
wget --no-check-certificate https://github.com/smithwhere/python36/releases/download/Python-2.7.18/Python-2.7.18.tgz && tar -xzf Python-2.7.18.tgz && cd Python-2.7.18
./configure --prefix=/usr/local/share/python2.7
make -j$(nproc) && make install
ln -s /usr/local/share/python2.7/bin/python2 /usr/bin/python2
cd ..
python2 --version
