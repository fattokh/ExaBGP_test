#!/bin/bash
cd /home/user/ExaBGP_test
#git clone https://gitlab.dei.unipd.it/Fattokh/exabgp_test.git
#Fattokh
#Fict4ia
cd /home/user/ 

git clone https://github.com/falberti/scaling-eureka.git
sudo apt install net-tools
pip install exabgp
sudo apt-get install debootstrap
cd /home/user/scaling-eureka/
./create_image_exa.sh /home/user/exa_test
./create_image_frr.sh /home/user/frr_test
cd /home/user/scaling-eureka/

#rm exa.py
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp exa.tar.gz           /home/user/scaling-eureka/tb/exa
cp frr.tar.gz           /home/user/scaling-eureka/tb/exa
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp exa.tar.gz           /home/user/scaling-eureka/tb/bgp
cp frr.tar.gz           /home/user/scaling-eureka/tb/bgp
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp exa.tar.gz           /home/user/scaling-eureka/tb/bgp4
cp frr.tar.gz           /home/user/scaling-eureka/tb/bgp4
cd /home/user/scaling-eureka/tb/exa


cd /home/user/scaling-eureka/tb/bgp4/

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