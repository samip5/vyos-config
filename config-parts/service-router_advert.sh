#!/bin/vbash

set interface eth8.10 default-preference 'high'
set interface eth8.10 interval max '600'
set interface eth8.10 prefix ::/64 valid-lifetime '2592000'

set interface eth8.105 default-preference 'high'
set interface eth8.105 interval max '600'
set interface eth8.105 prefix ::/64 valid-lifetime '2592000'

