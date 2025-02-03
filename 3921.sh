#!/bin/sh
sudo apt-get update && apt upgrade -y
sudo apt-get install -y python-is-python3 python3-pip supervisor libreadline-dev libc6-dev libffi-dev build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
wget https://www.python.org/ftp/python/3.9.21/Python-3.9.21.tgz && tar -xf Python-3.9.21.tgz && cd Python-3.9.21
./configure --enable-optimizations
make -j 2 && make altinstall
sudo ln -sf /usr/local/bin/python3.9 /usr/bin/python
