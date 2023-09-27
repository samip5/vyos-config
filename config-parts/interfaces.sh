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


set wireguard wg0 address '10.0.21.1/24'
set wireguard wg0 address 'fd1a:c3f5:de32::1/64'
set wireguard wg0 description 'VPN'
set wireguard wg0 mtu '1420'
set wireguard wg0 peer sky-itx-gaming allowed-ips '10.0.21.7/32'
set wireguard wg0 peer sky-itx-gaming allowed-ips 'fd1a:c3f5:de32::7/128'
set wireguard wg0 peer sky-itx-gaming persistent-keepalive '1560'
set wireguard wg0 peer sky-itx-gaming public-key 'NodnbWTG9+Q1vByjvqY0bBI1l97Q907Kcs8i3mAJMTU='
set wireguard wg0 peer sky-macbook allowed-ips '10.0.21.6/32'
set wireguard wg0 peer sky-macbook allowed-ips 'fd1a:c3f5:de32::6/128'
set wireguard wg0 peer sky-macbook persistent-keepalive '1060'
set wireguard wg0 peer sky-macbook public-key 'E0/ESv9tGUhYx8W8NPvhX//EnpoOhZ0+8Nm+n+oZZDk='
set wireguard wg0 peer sky-motorola allowed-ips '10.0.21.8/32'
set wireguard wg0 peer sky-motorola allowed-ips 'fd1a:c3f5:de32::8/128'
set wireguard wg0 peer sky-motorola persistent-keepalive '1560'
set wireguard wg0 peer sky-motorola public-key '3wTeFi04Wjkv2YS64p1oGrhtDc9S45f/G53mtMuFXWc='
set wireguard wg0 port '15820'
# set wireguard wg0 private-key '<not committing it>'

set wireguard wg1 address '10.13.38.4/32'
set wireguard wg1 description 'Kapsi VPN'
set wireguard wg1 peer backdoor address '91.232.154.239'
set wireguard wg1 peer backdoor allowed-ips '10.13.38.0/24'
set wireguard wg1 peer backdoor allowed-ips '10.0.199.0/24'
set wireguard wg1 peer backdoor allowed-ips '10.0.0.0/24'
set wireguard wg1 peer backdoor allowed-ips '10.0.1.0/24'
set wireguard wg1 peer backdoor allowed-ips '172.17.50.0/24'
set wireguard wg1 peer backdoor port '51820'
set wireguard wg1 peer backdoor public-key 'pXvkJNj+zhx1LTXSZOd+ETTKe9GjIJCxY0HMJbtWVAI='
# set wireguard wg1 private-key '<not committing it>'
