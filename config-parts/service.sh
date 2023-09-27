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

set service ssh port '22'
