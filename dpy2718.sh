apt-get update && apt upgrade -y
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && tar -xzf Python-2.7.18.tgz && cd Python-2.7.18
./configure --prefix=/usr/local/share/python2.7
make && make install
ln -s /usr/local/share/python2.7/bin/python2 /usr/bin/python2
cd ..
python2 --version
