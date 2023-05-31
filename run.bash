#!/bin/bash

https://vlabbooking.vdi.ict.unipd.it/
git clone https://gitlab.dei.unipd.it/anemos/scaling-eureka.git
cd /home/user/scaling-eureka/tb/bgp4/
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz
cd scaling-eureka/tb/bgp4/
python3 bgp4.py TB0
lxc list

