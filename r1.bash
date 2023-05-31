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