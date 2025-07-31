#!/bin/sh
apt-get update && apt upgrade
wget https://github.com/smithwhere/python36/releases/download/Python-2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libreadline-dev libdb-dev libpcap-dev xz-utils libexpat1-dev liblzma-dev libffi-dev checkinstall libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
./configure
make && make install
cd ..
