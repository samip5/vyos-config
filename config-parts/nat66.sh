#!/bin/vbash

set nat66 destination rule 1 destination address '2001:14ba:7500:2955::1'
set nat66 destination rule 1 destination port '443'
set nat66 destination rule 1 inbound-interface name 'eth7'
set nat66 destination rule 1 protocol 'tcp'
set nat66 destination rule 1 translation address '2001:14ba:16fd:961d::4443'
set nat66 destination rule 2 destination address '2001:14ba:7500:2955::1'
set nat66 destination rule 2 destination port '80'
set nat66 destination rule 2 inbound-interface name 'eth7'
set nat66 destination rule 2 protocol 'tcp'
set nat66 destination rule 2 translation address 'fded:687e:c3bf::4443'
set nat66 destination rule 3 destination address '2001:14ba:7500:2955::1'
set nat66 destination rule 3 destination port '15000,7777,15777'
set nat66 destination rule 3 inbound-interface name 'eth7'
set nat66 destination rule 3 protocol 'udp'
set nat66 destination rule 3 disable
set nat66 destination rule 3 translation address 'fded:687e:c3bf::4443'

set nat66 source rule 1 outbound-interface 'eth7'
set nat66 source rule 1 protocol 'tcp'
set nat66 source rule 1 source prefix '2001:14ba:16fd:961d::/64'
set nat66 source rule 1 translation address 'masquerade'

set nat66 source rule 2 outbound-interface name 'eth7'
set nat66 source rule 2 protocol 'all'
set nat66 source rule 2 source prefix '2001:67c:1104:9::/64'
set nat66 source rule 2 translation address 'masquerade'

set nat66 source rule 3 outbound-interface name 'eth7'
set nat66 source rule 3 protocol 'all'
set nat66 source rule 3 source prefix 'fd1a:c3f5:de32::/64'
set nat66 source rule 3 translation address 'masquerade'
