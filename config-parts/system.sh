#!/bin/vbash

set system domain-name 'holthome.net'
set system host-name 'fw'

set system login user vyos authentication public-keys personal key 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBOslNYCKlAhgO9vxUVt4Vq0diz35JD0f6Vtdh2zfZwyb+SI/TPC+U06TPsxS++KN+HHkQvNBcqpQ6a8qNsYsVJA='
set system login user vyos authentication public-keys personal type 'ecdsa-sha2-nistp256'

set system name-server '10.6.0.4'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog host 10.45.10.16 facility kern level 'warning'
set system syslog host 10.45.10.16 facility kern protocol 'tcp'
set system syslog host 10.45.10.16 port '6001'

set system time-zone 'America/New_York'
