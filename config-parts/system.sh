#!/bin/vbash

set system domain-name 'skylab.fi'
set system host-name 'gateway'

set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIAR0zt/ie+TMD+bY3wxfzbNNbAPH6NFJmC1AA066fsDr'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level info

#set system task-scheduler task backup-config crontab-spec '30 0 * * *'
#set system task-scheduler task backup-config executable path '/config/scripts/task-config-backup-usb.sh'

set system time-zone 'Europe/Helsinki'
