#!/bin/bash
cd /home/user/ExaBGP_test
curl -L "https://www.dropbox.com/scl/fi/86b0njiz79wz6f46505po/exa.tar.gz?dl=0&rlkey=33hvy6x7n1dci4op5qlvhoid6" > exa.tar.gz
curl -L "https://www.dropbox.com/scl/fi/r0j7b6ih7h1fheczp5a3n/frr.tar.gz?dl=0&rlkey=330ix39vt2ccbsovsgqzb70ix" > frr.tar.gz

sudo apt install net-tools
pip install exabgp
sudo apt-get install debootstrap
cd /home/user/ExaBGP_test
python3 exa.py TB
lxc list

