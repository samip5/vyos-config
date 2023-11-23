#!/bin/vbash

set container name bind cap-add 'net-bind-service'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind memory '0'
set container name bind network containers address '172.16.9.53'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume config destination '/etc/bind'
set container name bind volume config mode 'rw'
set container name bind volume config source '/config/containers/bind/config'

set container name dnsdist arguments '-v --log-timestamps'
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'Europe/Helsinki'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.2'
set container name dnsdist memory '0'
set container name dnsdist network containers address '2001:67c:1104:9::4'
set container name dnsdist network containers address '172.16.9.5'
set container name dnsdist port dns destination '53'
set container name dnsdist port dns listen-address '192.168.2.1'
set container name dnsdist port dns listen-address '10.0.50.1'
set container name dnsdist port dns listen-address '10.0.105.1'
set container name dnsdist port dns listen-address '10.0.110.1'
set container name dnsdist port dns protocol 'tcp'
set container name dnsdist port dns source '53'
set container name dnsdist port dns-udp destination '53'
set container name dnsdist port dns-udp listen-address '10.0.105.1'
set container name dnsdist port dns-udp listen-address '192.168.2.1'
set container name dnsdist port dns-udp listen-address '10.0.110.1'
set container name dnsdist port dns-udp listen-address '10.0.50.1'
set container name dnsdist port dns-udp protocol 'udp'
set container name dnsdist port dns-udp source '53'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config mode 'ro'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'

set container name node-exporter allow-host-networks
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.7.0'
set container name node-exporter memory '0'
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'

set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment TZ value 'Europe/Helsinki'
set container name unifi environment UNIFI_GID value '999'
set container name unifi environment UNIFI_STDOUT value 'true'
set container name unifi environment UNIFI_UID value '999'
set container name unifi image 'ghcr.io/jacobalberty/unifi-docker:v7.5.176'
set container name unifi memory '0'
set container name unifi network containers address '172.16.9.10'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume data destination '/unifi'
set container name unifi volume data mode 'rw'
set container name unifi volume data source '/config/containers/unifi'

set container network containers prefix '172.16.9.0/24'
set container network containers prefix '2001:67c:1104:9::/64'
