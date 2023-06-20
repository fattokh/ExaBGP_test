#!/bin/bash

cd /home/user/ 
mkdir exa_test
mkdir frr_test
git clone https://github.com/falberti/scaling-eureka.git

cd /home/user/scaling-eureka/

#rm exa.py
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
wget https://lxd.s3.eu-south-1.amazonaws.com/exa.tar.gz
cd 
cp /home/user/ExaBGP_test/exa_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp /home/user/ExaBGP_test/frr_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp exa.tar.gz           /home/user/scaling-eureka/tb/exa
cp frr.tar.gz           /home/user/scaling-eureka/tb/exa
cp /home/user/ExaBGP_test/exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp /home/user/ExaBGP_test/frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp exa.tar.gz           /home/user/scaling-eureka/tb/bgp
cp frr.tar.gz           /home/user/scaling-eureka/tb/bgp
cp /home/user/ExaBGP_test/exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp /home/user/ExaBGP_test/frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp exa.tar.gz           /home/user/scaling-eureka/tb/bgp4
cp frr.tar.gz           /home/user/scaling-eureka/tb/bgp4
cd /home/user/scaling-eureka/tb/exa


cd /home/user/scaling-eureka/tb/bgp4/
sudo apt install net-tools
python3 bgp4.py TB
pip install exabgp
sudo apt-get install debootstrap

#git clone https://github.com/fattokh/ExaBGP_test.git
#cd /home/user/scaling-eureka/tb/exa/ExaBGP_test
#tar -czvf exa_metadata.tar.gz metadata.yaml 
#cp exa_metadata.tar.gz ../
#cp frr_metadata.tar.gz ../
#cp exa.py ../
#cd ../
lxc list
#python3 exa.py EXA 
#lxc list