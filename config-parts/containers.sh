#!/bin/vbash

set name bind cap-add 'net-bind-service'
set name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set name bind disable
set name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set name bind memory '0'
set name bind network containers address '10.5.0.3'
set name bind restart 'on-failure'
set name bind shared-memory '0'
set name bind volume cache destination '/var/cache/bind'
set name bind volume cache mode 'rw'
set name bind volume cache source '/tmp/bind/cache'
set name bind volume config destination '/etc/bind'
set name bind volume config mode 'ro'
set name bind volume config source '/config/containers/bind/config'
set name cf-ddns allow-host-networks
# set name cf-ddns environment CF_API_TOKEN value '<snip>'
set name cf-ddns environment DOMAINS value 'r.home.skym.fi'
set name cf-ddns environment PGID value '100'
set name cf-ddns environment PUID value '1002'
set name cf-ddns environment TZ value 'Europe/Helsinki'
set name cf-ddns image 'docker.io/favonia/cloudflare-ddns:1.10.1'
set name cf-ddns memory '0'
set name cf-ddns restart 'on-failure'
set name cf-ddns shared-memory '0'
set name dnsdist arguments '--log-timestamps'
set name dnsdist cap-add 'net-bind-service'
set name dnsdist disable
set name dnsdist environment TZ value 'Europe/Helsinki'
set name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.1'
set name dnsdist memory '0'
set name dnsdist network containers address '10.5.0.4'
set name dnsdist restart 'on-failure'
set name dnsdist shared-memory '0'
set name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set name dnsdist volume config mode 'ro'
set name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set name netboot image 'ghcr.io/netbootxyz/netbootxyz:latest'
set name netboot memory '0'
set name netboot network containers address '10.5.0.30'
set name netboot port tftp destination '69'
set name netboot port tftp protocol 'udp'
set name netboot port tftp source '69'
set name netboot restart 'on-failure'
set name netboot volume config destination '/config'
set name netboot volume config mode 'rw'
set name netboot volume config source '/config/containers/netboot'
set name node-exporter allow-host-networks
set name node-exporter environment procfs value '/host/proc'
set name node-exporter environment rootfs value '/host/rootfs'
set name node-exporter environment sysfs value '/host/sys'
set name node-exporter image 'quay.io/prometheus/node-exporter:v1.6.1'
set name node-exporter memory '0'
set name node-exporter restart 'on-failure'
set name node-exporter shared-memory '0'
set name node-exporter volume procfs destination '/host/proc'
set name node-exporter volume procfs mode 'ro'
set name node-exporter volume procfs source '/proc'
set name node-exporter volume rootfs destination '/host/rootfs'
set name node-exporter volume rootfs mode 'ro'
set name node-exporter volume rootfs source '/'
set name node-exporter volume sysfs destination '/host/sys'
set name node-exporter volume sysfs mode 'ro'
set name node-exporter volume sysfs source '/sys'
set name unifi environment RUNAS_UID0 value 'false'
set name unifi environment TZ value 'Europe/Helsinki'
set name unifi environment UNIFI_GID value '999'
set name unifi environment UNIFI_STDOUT value 'true'
set name unifi environment UNIFI_UID value '999'
set name unifi image 'ghcr.io/jacobalberty/unifi-docker:v7.5.174'
set name unifi memory '0'
set name unifi network containers address '10.5.0.10'
set name unifi restart 'on-failure'
set name unifi shared-memory '0'
set name unifi volume data destination '/unifi'
set name unifi volume data mode 'rw'
set name unifi volume data source '/config/containers/unifi'
set network containers prefix '10.5.0.0/24'
