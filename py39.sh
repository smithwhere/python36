#!/bin/sh
apt-get update -y
apt-get install -y python-is-python3 python3-pip supervisor build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz && tar zxvf Python-3.9.7.tgz && cd Python-3.9.7
./configure
make&& make install
cd ..
rm -rf Python-3.9.7 Python-3.9.7.tgz
rm -rf  /usr/bin/python
ln -s /usr/bin/python3.9 /usr/bin/python