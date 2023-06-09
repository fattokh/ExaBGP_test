#!/bin/bash

cd /home/user/ 
git clone https://gitlab.dei.unipd.it/anemos/scaling-eureka.git
cd /home/user/scaling-eureka/tb/bgp4/
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
wget https://drive.google.com/uc?export=download&id=12h1fjy6M5wAHLycXDaRi_rZXD6tR5UqK
wget https://drive.google.com/uc?export=download&id=1uBTLPXLNLcZrMhgudTlUkfBMXi1FtZ0l
wget https://drive.google.com/uc?export=download&id=1EV8lSoZ8Hz91ytNhw5b_THxMrFXawYBk
wget https://drive.google.com/uc?export=download&id=1rBM-ta1liYfbevTPguq-ySXTnJfv6Q68
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
