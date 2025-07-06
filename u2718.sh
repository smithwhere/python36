#!/bin/sh
apt-get update && apt upgrade -y
sudo apt-get install -y build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev libbz2-dev zlib1g-dev libncurses5-dev libreadline-dev tk-dev libgdbm-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev libc6-dev
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
./configure
make && make install
cd ..
rm -rf Python-2.7.18 Python-2.7.18.tgz
