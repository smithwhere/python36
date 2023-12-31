#!/bin/sh
apt-get update && apt upgrade -y
apt-get install -y python-is-python3 python3-pip supervisor libreadline-dev libc6-dev libffi-dev build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
wget https://www.python.org/ftp/python/3.11.6/Python-3.11.6.tgz && tar zxvf Python-3.11.6.tgz && cd Python-3.11.6
./configure
make&& make install
cd ..
rm -rf Python-3.11.6 Python-3.11.6.tgz
