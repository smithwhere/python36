#!/bin/sh
apt-get update -y && apt upgrade -y
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
sudo apt-get install build-essential zlib1g-dev libncurses5-dev libreadline-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev checkinstall libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y
./configure
make && make install
cd ..
