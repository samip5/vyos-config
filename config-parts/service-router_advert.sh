#!/bin/vbash

set service router-advert interface eth0.10 default-preference 'high'
set service router-advert interface eth0.10 interval max '600'
set service router-advert interface eth0.10 name-server '2001:67c:1104:9::4'
set service router-advert interface eth0.10 prefix ::/64 valid-lifetime '2592000'

set service router-advert interface eth0.105 name-server '2001:67c:1104:9::4'
set service router-advert interface eth0.105 prefix ::/0 valid-lifetime '2592000'

set service router-advert interface eth0.110 default-preference 'high'
set service router-advert interface eth0.110 interval max '600'
set service router-advert interface eth0.110 name-server '2001:67c:1104:9::4'
set service router-advert interface eth0.110 prefix ::/64 valid-lifetime '2592000'
