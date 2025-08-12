#!/bin/sh
apt-get update -y && apt upgrade -y
apt-get install python-is-python3 python3-pip supervisor libreadline-dev libc6-dev libffi-dev build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev -y
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar zxvf Python-2.7.18.tgz && cd Python-2.7.18
./configure
make && make install
cd ..
