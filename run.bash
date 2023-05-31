#!/bin/bash

cd /home/user/ 
git clone https://gitlab.dei.unipd.it/anemos/scaling-eureka.git
cd /home/user/scaling-eureka/tb/bgp4/
wget https://lxd.s3.eu-south-1.amazonaws.com/frr.tar.gz

python3 bgp4.py TB
lxc list
pip install exabgp

lxc exec TB-0 bash
vtysh
configure terminal
!
interface loDummy
ip address 1.1.1.1/32
!
interface eth0
ip address 10.0.0.1/30
!
interface eth1
ip address 10.0.0.9/30
!
router bgp 1
no bgp ebgp-requires-policy
neighbor 10.0.0.2 remote-as 2
neighbor 10.0.0.2 update-source 10.0.0.1
neighbor 10.0.0.10 remote-as 3
neighbor 10.0.0.10 update-source 10.0.0.9
!
address-family ipv4 unicast
redistribute connected
neighbor 10.0.0.2 next-hop-self
neighbor 10.0.0.2 soft-reconfiguration inbound
neighbor 10.0.0.10 next-hop-self
neighbor 10.0.0.10 soft-reconfiguration inbound
!
exit
exit
exit




lxc exec TB-1 bash
vtysh
configure terminal
!
interface eth0
ip address 10.0.0.2/30
!
interface eth1
ip address 10.0.0.5/30
!
router bgp 2
no bgp ebgp-requires-policy
neighbor 10.0.0.1 remote-as 1
neighbor 10.0.0.1 update-source 10.0.0.2
neighbor 10.0.0.6 remote-as 4
neighbor 10.0.0.6 update-source 10.0.0.5
!
address-family ipv4 unicast
redistribute connected
neighbor 10.0.0.1 next-hop-self
neighbor 10.0.0.1 soft-reconfiguration inbound
neighbor 10.0.0.6 next-hop-self
neighbor 10.0.0.6 soft-reconfiguration inbound
!
exit
exit
exit


lxc exec TB-2 bash

vtysh
configure terminal
!
interface eth0
ip address 10.0.0.10/30
!
interface eth1
ip address 10.0.0.14/30
!
router bgp 3
no bgp ebgp-requires-policy
neighbor 10.0.0.9 remote-as 1
neighbor 10.0.0.9 update-source 10.0.0.10
neighbor 10.0.0.13 remote-as 4
neighbor 10.0.0.13 update-source 10.0.0.14
!
address-family ipv4 unicast
redistribute connected
neighbor 10.0.0.9 next-hop-self
neighbor 10.0.0.9 soft-reconfiguration inbound
neighbor 10.0.0.13 next-hop-self
neighbor 10.0.0.13 soft-reconfiguration inbound
!
exit
exit
exit


lxc exec TB-3 bash
vtysh
configure terminal
!
interface loDummy
ip address 2.2.2.2/32
!
interface eth0
ip address 10.0.0.6/30
!
interface eth1
ip address 10.0.0.13/30
!
router bgp 4
no bgp ebgp-requires-policy
neighbor 10.0.0.5 remote-as 2
neighbor 10.0.0.5 update-source 10.0.0.6
neighbor 10.0.0.14 remote-as 3
neighbor 10.0.0.14 update-source 10.0.0.13
!
address-family ipv4 unicast
redistribute connected
neighbor 10.0.0.5 next-hop-self
neighbor 10.0.0.5 soft-reconfiguration inbound
neighbor 10.0.0.14 next-hop-self
neighbor 10.0.0.14 soft-reconfiguration inbound
!
exit
exit
exit