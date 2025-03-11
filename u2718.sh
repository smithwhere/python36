#!/bin/sh
apt-get update && apt upgrade -y
sudo apt-get install build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev build-essential
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
./configure
make&& make install
cd ..
rm -rf Python-2.7.18 Python-2.7.18.tgz
