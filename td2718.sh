#!/bin/sh
apt-get update && apt upgrade
apt update
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
wget https://github.com/smithwhere/python36/releases/download/Python-2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
./configure
make && make install
cd ..
rm -rf Python-2.7.18.tgz
