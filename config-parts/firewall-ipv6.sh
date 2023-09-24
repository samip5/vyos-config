#!/bin/vbash

set firewall ipv6 forward filter default-action 'accept'
set firewall ipv6 forward filter rule 1 action 'accept'
set firewall ipv6 forward filter rule 1 state established 'enable'
set firewall ipv6 forward filter rule 2 action 'accept'
set firewall ipv6 forward filter rule 2 state related 'enable'
set firewall ipv6 forward filter rule 101 action 'accept'


set firewall ipv6 input filter default-action 'accept'
set firewall ipv6 input filter rule 1 action 'accept'
set firewall ipv6 input filter rule 1 state established 'enable'
set firewall ipv6 input filter rule 2 action 'accept'
set firewall ipv6 input filter rule 2 state related 'enable'
set firewall ipv6 input filter rule 101 action 'drop'

set firewall ipv6 output filter default-action 'accept'
set firewall ipv6 output filter rule 1 action 'accept'
set firewall ipv6 output filter rule 1 state established 'enable'
set firewall ipv6 output filter rule 2 action 'accept'
set firewall ipv6 output filter rule 2 state related 'enable'
set firewall ipv6 output filter rule 101 action 'drop'
