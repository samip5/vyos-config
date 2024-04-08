#!/bin/vbash

set service dns

set service lldp interface eth0
set service lldp interface eth1
set service lldp interface eth2
set service lldp interface eth3
set service lldp interface eth4
set service lldp interface eth5
set service lldp interface eth6
set service lldp interface eth7
set service lldp interface eth8

set service ntp allow-client address '0.0.0.0/0'
set service ntp allow-client address '::/0'
set service ntp server time1.vyos.net
set service ntp server time2.vyos.net
set service ntp server time3.vyos.net

set service snmp community public
set service snmp listen-address 192.168.99.1

set service ssh port '22'
set service ssh dynamic-protection allow-from '192.168.2.10'
set service ssh listen-address '192.168.99.1'
set service ssh listen-address '192.168.2.1'
set service ssh listen-address '2001:14ba:1600::260a:f61f'

