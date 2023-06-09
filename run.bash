#!/bin/bash

cd /home/user/ 
mkdir exa_test
mkdir frr_test
git clone https://github.com/falberti/scaling-eureka.git
cd /home/user/scaling-eureka/tb/bgp/
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
sudo apt install net-tools
python3 bgp.py TB
pip install exabgp
sudo apt-get install debootstrap

cd /home/user/scaling-eureka/
./create_image_exa.sh /home/user/exa_test
./create_image_exa.sh /home/user/frr_test
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp exa.tar.gz           /home/user/scaling-eureka/tb/exa
cp frr.tar.gz           /home/user/scaling-eureka/tb/exa

cd /home/user/scaling-eureka/tb/exa
#rm exa.py
#wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
#wget https://lxd.s3.eu-south-1.amazonaws.com/exa.tar.gz


#git clone https://github.com/fattokh/ExaBGP_test.git
#cd /home/user/scaling-eureka/tb/exa/ExaBGP_test
#tar -czvf exa_metadata.tar.gz metadata.yaml 
#cp exa_metadata.tar.gz ../
#cp frr_metadata.tar.gz ../
#cp exa.py ../
#cd ../
lxc list
python3 exa.py EXA 
lxc list