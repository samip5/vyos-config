#!/bin/vbash
set protocols static route 10.0.0.0/24 interface wg1
set protocols static route 10.0.1.0/24 interface wg1
set protocols static route 10.0.199.0/24 interface wg1
set protocols static route 10.13.38.0/24 interface wg1
set protocols static route 172.17.50.0/24 interface wg1
set protocols static route6 2001:67c:1be8:2::/64 interface wg1
set protocols static table 10 route 0.0.0.0/0 interface peth0
set protocols static table 100 route 0.0.0.0/0 interface wg1
