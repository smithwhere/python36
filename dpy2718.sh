apt-get update && apt upgrade -y
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar -xzf Python-2.7.18.tgz && cd Python-2.7.18
./configure --prefix=/opt/python2.7 --enable-unicode=ucs4
make -j$(nproc) && make install
ln -s /opt/python2.7/bin/python2.7 /usr/local/bin/python2
cd ..
python2 --version
