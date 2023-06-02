#!/bin/bash

cd /home/user/ 
git clone https://gitlab.dei.unipd.it/anemos/scaling-eureka.git
cd /home/user/scaling-eureka/tb/bgp4/
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz

python3 bgp4.py TB
lxc list
pip install exabgp
sudo apt-get install debootstrap

