#!/bin/vbash

set destination rule 1 destination address '2001:14ba:1600::260a:f61f'
set destination rule 1 destination port '443'
set destination rule 1 inbound-interface 'eth7'
set destination rule 1 protocol 'tcp'
set destination rule 1 translation address '2001:14ba:16fd:961d::4443'
set destination rule 2 destination address '2001:14ba:1600::260a:f61f'
set destination rule 2 destination port '80'
set destination rule 2 inbound-interface 'eth7'
set destination rule 2 protocol 'tcp'
set destination rule 2 translation address '2001:14ba:16fd:961d::4443'

set source rule 1 outbound-interface 'eth7'
set source rule 1 protocol 'tcp'
set source rule 1 source prefix '2001:14ba:16fd:961d::/64'
set source rule 1 translation address 'masquerade'

