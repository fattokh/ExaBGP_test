#!/bin/bash

cd /home/user/ 
git clone https://github.com/falberti/scaling-eureka.git
cd /home/user/scaling-eureka/tb/bgp4/
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
sudo apt install net-tools
python3 bgp.py TB

pip install exabgp
sudo apt-get install debootstrap
cd /home/user/scaling-eureka/tb/exa
wget https://lxd.s3.eu-south-1.amazonaws.com/exa.tar.gz
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
git clone https://github.com/fattokh/ExaBGP_test.git
cp exa.tar.gz ../
cp frr.tar.gz ../

lxc list
python3 exa.py EXA
