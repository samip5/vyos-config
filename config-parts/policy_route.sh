#!/bin/vbash

set policy route PBR interface 'eth8.10'
set policy route PBR rule 10 set table '10'
set policy route PBR rule 10 source address '192.168.2.129'
set policy route PBR rule 100 destination group network-group 'kapsi'
set policy route PBR rule 100 set table '100'

