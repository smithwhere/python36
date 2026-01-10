#!/bin/sh
apt-get update && apt upgrade
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
wget https://github.com/smithwhere/python36/releases/download/Python-2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
./configure --prefix=/opt/python --enable-unicode=ucs4
make -j$(nproc) && sudo make install
cd ..
rm -rf Python-2.7.18.tgz
