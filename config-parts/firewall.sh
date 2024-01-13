#!/bin/vbash

set address-group k8s_ingress address '10.96.69.80'
set address-group k8s_mqtt address '192.168.10.10'
set address-group k8s_nodes address '10.0.110.10-10.0.110.30'
set address-group k8s_nodes address '10.0.105.10-10.0.105.200'
set address-group nas address '192.168.2.2'
set address-group router-addresses address '192.168.2.1'
set address-group router-addresses address '127.0.0.1'
set address-group vyos_coredns address '172.16.9.3'
set address-group vyos_dnsdist address '172.16.9.4'
set address-group vyos_unifi address '172.16.9.10'

set group interface-group IG_containers interface 'pod-containers'
set group interface-group IG_iot interface 'eth8.50'
set group interface-group IG_lan interface 'eth8.10'
set group interface-group IG_wan interface 'eth7'
set group interface-group LAN interface 'eth0.10'
set group interface-group LAN interface 'eth0.105'
set group interface-group LAN interface 'eth0.110'
set group interface-group WAN interface 'eth7'


set ipv6-address-group router-addresses-ipv6 address 'fe80::227c:14ff:fef2:37dd'
set ipv6-address-group router-addresses-ipv6 address '::1'
set ipv6-address-group router-addresses-ipv6 address '2001:14ba:1600::260a:f61f'

set group port-group sf port '15000'
set group port-group sf port '7777'
set group port-group sf port '15777'
set group port-group wireguard port '51820'
