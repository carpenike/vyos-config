#!/bin/vbash

# IPv4 Firewall Rules
## FROM WAN TO LOCAL

set firewall name wan-local default-action 'drop'
set firewall name wan-local description 'From WAN to LOCAL'
set firewall name wan-local enable-default-log
set firewall name wan-local rule 1 action 'accept'
set firewall name wan-local rule 1 description 'Rule: accept_wireguard'
set firewall name wan-local rule 1 destination port '51820'
set firewall name wan-local rule 1 protocol 'udp'

# IPv6 Firewall Rules
## FROM WAN TO LOCAL
set firewall ipv6-name wan-local default-action 'drop'
set firewall ipv6-name wan-local description 'From WAN to LOCAL'
set firewall ipv6-name wan-local enable-default-log
set firewall ipv6-name wan-local rule 1 action 'accept'
set firewall ipv6-name wan-local rule 1 description 'Rule: accept_ipv6-icmp'
set firewall ipv6-name wan-local rule 1 protocol 'ipv6-icmp'

set firewall ipv6-name wan-local rule 2 action 'accept'
set firewall ipv6-name wan-local rule 2 description 'Rule: accept_wireguard'
set firewall ipv6-name wan-local rule 2 destination port '51820'
set firewall ipv6-name wan-local rule 2 protocol 'udp'
