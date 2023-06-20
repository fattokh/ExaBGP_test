#!/bin/bash

cd /home/user/ 

git clone https://github.com/falberti/scaling-eureka.git
cd
cd /home/user/
git clone https://gitlab.dei.unipd.it/Fattokh/exabgp_test.git
Fattokh
x6YTk0sGeP

cd /home/user/scaling-eureka/

#rm exa.py

cp /home/user/exabgp_test/exa_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp /home/user/exabgp_test/frr_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp /home/user/exabgp_test/exa.tar.gz           /home/user/scaling-eureka/tb/exa
cp /home/user/exabgp_test/frr.tar.gz           /home/user/scaling-eureka/tb/exa
cp /home/user/exabgp_test/exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp /home/user/exabgp_test/frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp /home/user/exabgp_test/exa.tar.gz           /home/user/scaling-eureka/tb/bgp
cp /home/user/exabgp_test/frr.tar.gz           /home/user/scaling-eureka/tb/bgp
cp /home/user/exabgp_test/exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp /home/user/exabgp_test/frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp /home/user/exabgp_test/exa.tar.gz           /home/user/scaling-eureka/tb/bgp4
cp /home/user/exabgp_test/frr.tar.gz           /home/user/scaling-eureka/tb/bgp4
cd /home/user/scaling-eureka/tb/exa


cd /home/user/scaling-eureka/tb/bgp4/
sudo apt install net-tools
pip install exabgp
sudo apt-get install debootstrap
lxc list
python3 bgp4.py TB


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