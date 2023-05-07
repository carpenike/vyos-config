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

## FROM WIRELESS TO LOCAL
set firewall name wireless-local default-action 'drop'
set firewall name wireless-local description 'From WAN to LOCAL'
set firewall name wireless-local enable-default-log
set firewall name wireless-local rule 1 action 'accept'
set firewall name wireless-local rule 1 description 'Rule: accept_icmp'
set firewall name wireless-local rule 1 protocol 'icmp'

set firewall name wireless-local rule 2 action 'accept'
set firewall name wireless-local rule 2 description 'Rule: accept_mdns'
set firewall name wireless-local rule 2 destination port 'mdns'
set firewall name wireless-local rule 2 source port 'mdns'
set firewall name wireless-local rule 2 protocol 'udp'

set firewall name wireless-local rule 3 action 'accept'
set firewall name wireless-local rule 3 description 'Rule: accept_dhcp'
set firewall name wireless-local rule 3 destination port '67,68'
set firewall name wireless-local rule 3 source port '67,68'
set firewall name wireless-local rule 3 protocol 'udp'

set firewall name wireless-local rule 4 action 'accept'
set firewall name wireless-local rule 4 description 'Rule: accept_ssh'
set firewall name wireless-local rule 4 destination port 'ssh'
set firewall name wireless-local rule 4 protocol 'tcp'

## FROM SERVICES TO LOCAL
set firewall name services-local default-action 'drop'
set firewall name services-local description 'From SERVICES to LOCAL'
set firewall name services-local enable-default-log

# FROM WIRELESS TO WAN
set firewall name wireless-wan default-action 'drop'
set firewall name wireless-wan description 'From WIRELESS to WAN'
set firewall name wireless-wan enable-default-log
set firewall name wireless-wan rule 1 action 'accept'
set firewall name wireless-wan rule 1 description 'Rule: accept_icmp'
set firewall name wireless-wan rule 1 protocol 'icmp'

set firewall name wireless-wan rule 2 action 'accept'
set firewall name wireless-wan rule 2 description 'Rule: accept_http'
set firewall name wireless-wan rule 2 destination port 'http'
set firewall name wireless-wan rule 2 protocol 'tcp'

set firewall name wireless-wan rule 3 action 'accept'
set firewall name wireless-wan rule 3 description 'Rule: accept_https'
set firewall name wireless-wan rule 3 destination port 'https'
set firewall name wireless-wan rule 3 protocol 'tcp'

set firewall name wireless-wan rule 4 action 'accept'
set firewall name wireless-wan rule 4 description 'Rule: accept_wifi_calling'
set firewall name wireless-wan rule 4 destination port '500,4500'
set firewall name wireless-wan rule 4 source group domain-group verizon_wifi_calling
set firewall name wireless-wan rule 4 protocol 'udp'

set firewall name wireless-wan rule 5 action 'accept'
set firewall name wireless-wan rule 5 description 'Rule: accept_amcrest_clients_to_amcrest_cloud_udp'
set firewall name wireless-wan rule 5 destination port '8000-8815'
set firewall name wireless-wan rule 5 source group domain-group amcrest_clients
set firewall name wireless-wan rule 5 protocol 'udp'

set firewall name wireless-wan rule 6 action 'accept'
set firewall name wireless-wan rule 6 description 'Rule: accept_smart_link_from_flex_clients_tcp'
set firewall name wireless-wan rule 6 destination port '4992,4994'
set firewall name wireless-wan rule 6 source group domain-group flex_clients
set firewall name wireless-wan rule 6 protocol 'tcp'

set firewall name wireless-wan rule 7 action 'accept'
set firewall name wireless-wan rule 7 description 'Rule: accept_smart_link_from_flex_clients_udp'
set firewall name wireless-wan rule 7 destination port '4991,4992,4993'
set firewall name wireless-wan rule 7 source group domain-group flex_clients
set firewall name wireless-wan rule 7 protocol 'udp'

set firewall name wireless-wan rule 8 action 'accept'
set firewall name wireless-wan rule 8 description 'Rule: accept_plex_from_plex_clients_to_public'
set firewall name wireless-wan rule 8 destination port '32400'
set firewall name wireless-wan rule 8 source group domain-group plex_clients
set firewall name wireless-wan rule 8 protocol 'tcp'

# FROM WIRELESS TO SERVICES
set firewall name wireless-services default-action 'drop'
set firewall name wireless-services description 'From WIRELESS to SERVICES'
set firewall name wireless-services enable-default-log
set firewall name wireless-services rule 1 action 'accept'
set firewall name wireless-services rule 1 description 'Rule: accept_dns'
set firewall name wireless-services rule 1 destination port 'domain,domain-s'
set firewall name wireless-services rule 1 protocol 'tcp_udp'

# FROM LOCAL TO WIRELESS
set firewall name local-wireless default-action 'drop'
set firewall name local-wireless description 'From LOCAL to WIRELESS'
set firewall name local-wireless enable-default-log

# FROM LOCAL TO WAN
set firewall name local-wan default-action 'drop'
set firewall name local-wan description 'From LOCAL to WAN'
set firewall name local-wan enable-default-log

# FROM LOCAL TO SERVICES
set firewall name local-services default-action 'drop'
set firewall name local-services description 'From LOCAL to SERVICES'
set firewall name local-services enable-default-log
set firewall name local-services rule 1 action 'accept'
set firewall name local-services rule 1 description 'Rule: accept_dns'
set firewall name local-services rule 1 destination port 'domain,domain-s'
set firewall name local-services rule 1 protocol 'tcp_udp'

# FROM WAN TO WIRELESS
set firewall name wan-wireless default-action 'drop'
set firewall name wan-wireless description 'From WAN to WIRELESS'
set firewall name wan-wireless enable-default-log

# FROM WAN TO SERVICES
set firewall name wan-services default-action 'drop'
set firewall name wan-services description 'From WAN to SERVICES'
set firewall name wan-services enable-default-log

# FROM SERVICES TO WIRELESS
set firewall name services-wireless default-action 'drop'
set firewall name services-wireless description 'From SERVICES to WIRELESS'
set firewall name services-wireless enable-default-log

# FROM SERVICES TO WAN
set firewall name services-wan default-action 'drop'
set firewall name services-wan description 'From SERVICES to WAN'
set firewall name services-wan enable-default-log
set firewall name services-wan rule 1 action 'accept'
set firewall name services-wan rule 1 description 'Rule: accept_https'
set firewall name services-wan rule 1 destination port 'https'
set firewall name services-wan rule 1 protocol 'tcp'

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
