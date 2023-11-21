#!/bin/vbash

set protocols bgp neighbor 10.0.105.10 description 'w1'
set protocols bgp neighbor 10.0.105.10 peer-group 'kube-prod'
set protocols bgp neighbor 10.0.105.19 peer-group 'kube-prod'
set protocols bgp neighbor 10.0.105.20 peer-group 'kube-prod'
set protocols bgp neighbor 10.0.105.25 peer-group 'kube-prod'
set protocols bgp neighbor 10.0.105.33 peer-group 'kube-prod'
set protocols bgp neighbor 10.0.105.34 peer-group 'kube-prod'
set protocols bgp neighbor 10.0.105.43 peer-group 'kube-prod'

set protocols bgp neighbor 10.0.110.18 peer-group 'kube-dev'
set protocols bgp neighbor 10.0.110.19 peer-group 'kube-dev'

set protocols bgp neighbor 192.168.2.129 description 'dh'
set protocols bgp neighbor 192.168.2.129 peer-group 'kube-prod'

set protocols bgp neighbor 2001:14ba:16eb:6f6e:dea6:32ff:fe3f:9301 description 'dev-w1'
set protocols bgp neighbor 2001:14ba:16eb:6f6e:dea6:32ff:fe3f:9301 peer-group 'kube-dev-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f6e:e65f:1ff:fe1b:3293 description 'dev-m1'
set protocols bgp neighbor 2001:14ba:16eb:6f6e:e65f:1ff:fe1b:3293 peer-group 'kube-dev-v6'

set protocols bgp neighbor 2001:14ba:16eb:6f69:6e4b:90ff:fe2d:a7dd description 'm1'
set protocols bgp neighbor 2001:14ba:16eb:6f69:6e4b:90ff:fe2d:a7dd peer-group 'kube-prod-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f69:6e4b:90ff:fe2d:a807 description 'w-amd-1'
set protocols bgp neighbor 2001:14ba:16eb:6f69:6e4b:90ff:fe2d:a807 peer-group 'kube-prod-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f69:11:32ff:fe2e:ccd6 description 'w-amd-2'
set protocols bgp neighbor 2001:14ba:16eb:6f69:11:32ff:fe2e:ccd6 peer-group 'kube-prod-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f69:11:32ff:fe29:a4d2 description 'w-amd-storage-1'
set protocols bgp neighbor 2001:14ba:16eb:6f69:11:32ff:fe29:a4d2 peer-group 'kube-prod-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f69:e65f:1ff:fe1b:3298 description 'w1'
set protocols bgp neighbor 2001:14ba:16eb:6f69:e65f:1ff:fe1b:3298 peer-group 'kube-prod-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f69:e65f:1ff:fe2e:6ac description 'w7'
set protocols bgp neighbor 2001:14ba:16eb:6f69:e65f:1ff:fe2e:6ac peer-group 'kube-prod-v6'
set protocols bgp neighbor 2001:14ba:16eb:6f69:ee8e:b5ff:fe7b:efaa description 'w-amd-3'
set protocols bgp neighbor 2001:14ba:16eb:6f69:ee8e:b5ff:fe7b:efaa peer-group 'kube-prod-v6'
set protocols bgp parameters router-id '192.168.2.1'
set protocols bgp peer-group kube-dev address-family ipv4-unicast soft-reconfiguration inbound
set protocols bgp peer-group kube-dev remote-as '213021'
set protocols bgp peer-group kube-dev-v6 address-family ipv6-unicast soft-reconfiguration inbound
set protocols bgp peer-group kube-dev-v6 remote-as '213021'
set protocols bgp peer-group kube-prod address-family ipv4-unicast soft-reconfiguration inbound
set protocols bgp peer-group kube-prod remote-as '213021'
set protocols bgp peer-group kube-prod-v6 address-family ipv6-unicast soft-reconfiguration inbound
set protocols bgp peer-group kube-prod-v6 remote-as '213021'
set protocols bgp system-as '213021'
