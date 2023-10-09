#!/bin/sh
apt-get update && apt upgrade -y
apt-get install libreadline-dev libc6-dev libffi-dev build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
wget wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz && tar -xf Python-2.7.13.tgz
cd Python-2.7.13
./configure --with-pydebug
make -s -j16
make&& make install
cd ..
rm -rf Python-2.7.13 Python-2.7.13.tgz
