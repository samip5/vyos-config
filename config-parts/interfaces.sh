#!/bin/vbash

set ethernet eth0 description 'SFP1'
set ethernet eth0 hw-id '20:7c:14:a2:71:44'

set ethernet eth1 hw-id '20:7c:14:a2:71:45'

set ethernet eth2 hw-id '20:7c:14:a2:71:46'

set ethernet eth3 hw-id '20:7c:14:a2:71:47'

set ethernet eth4 hw-id '20:7c:14:f2:37:d9'

set ethernet eth5 hw-id '20:7c:14:f2:37:da'

set ethernet eth6 hw-id '20:7c:14:f2:37:db'

set ethernet eth7 address 'dhcp'
set ethernet eth7 address 'dhcpv6'
set ethernet eth7 description 'ETH1, WAN'
set ethernet eth7 dhcpv6-options pd 0 interface eth8.10 address '10'
set ethernet eth7 dhcpv6-options pd 0 interface eth8.10 sla-id '10'
set ethernet eth7 dhcpv6-options pd 0 interface eth8.105 sla-id '105'
set ethernet eth7 dhcpv6-options pd 0 interface eth8.110
set ethernet eth7 dhcpv6-options pd 0 length '56'
set ethernet eth7 dhcpv6-options rapid-commit
set ethernet eth7 hw-id '20:7c:14:f2:37:dc'
set ethernet eth7 ipv6 address autoconf

set ethernet eth8 hw-id '20:7c:14:f2:37:dd'
set ethernet eth8 vif 10 address '192.168.2.1/24'
set ethernet eth8 vif 50 address '10.0.50.1/24'
set ethernet eth8 vif 99 address '192.168.99.1/24'
set ethernet eth8 vif 105 address '10.0.105.1/24'
set ethernet eth8 vif 110 address '10.0.110.1/24'
