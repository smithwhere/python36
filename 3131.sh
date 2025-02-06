#!/bin/sh
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev tk-dev
wget https://www.python.org/ftp/python/3.13.1/Python-3.13.1.tgz && tar -xf Python-3.13.1.tgz && cd Python-3.13.1
sudo ./configure --prefix=/usr/local/python-3.13 --enable-optimizations --with-lto --with-computed-gotos --with-system-ffi --enable-shared
sudo make -j "$(nproc)"
sudo ./python3.13 -m test -j "$(nproc)"
sudo make install
