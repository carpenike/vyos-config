#!/bin/vbash

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server time.cloudflare.com

# SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# UDP Broadast-Relay
set service broadcast-relay id 1 description 'Sonos'
set service broadcast-relay id 1 interface 'bond0.20'
set service broadcast-relay id 1 interface 'bond0.30'
set service broadcast-relay id 1 port '1900'
