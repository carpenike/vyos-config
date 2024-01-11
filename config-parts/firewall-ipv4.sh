#!/bin/vbash
# From GUEST to IOT
set firewall ipv4 name guest-iot default-action 'drop'
set firewall ipv4 name guest-iot description 'From GUEST to IOT'
set firewall ipv4 name guest-iot default-log
# set firewall ipv4 name guest-iot rule 100 action 'accept'
# set firewall ipv4 name guest-iot rule 100 description 'Rule: accept_tcp_printer_from_allowed_devices'
# set firewall ipv4 name guest-iot rule 100 destination group address-group 'printers'
# set firewall ipv4 name guest-iot rule 100 destination port 'http,9100'
# set firewall ipv4 name guest-iot rule 100 protocol 'tcp'
# set firewall ipv4 name guest-iot rule 100 source group address-group 'printer_allowed'
# set firewall ipv4 name guest-iot rule 101 action 'accept'
# set firewall ipv4 name guest-iot rule 101 description 'Rule: accept_udp_printer_from_allowed_devices'
# set firewall ipv4 name guest-iot rule 101 destination group address-group 'printers'
# set firewall ipv4 name guest-iot rule 101 destination port '161'
# set firewall ipv4 name guest-iot rule 101 protocol 'udp'
# set firewall ipv4 name guest-iot rule 101 source group address-group 'printer_allowed'
# set firewall ipv4 name guest-iot rule 999 action 'drop'
# set firewall ipv4 name guest-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name guest-iot rule 999 state invalid
# set firewall ipv4 name guest-iot rule 999 log

# From GUEST to wireless
set firewall ipv4 name guest-wireless default-action 'drop'
set firewall ipv4 name guest-wireless description 'From GUEST to wireless'
set firewall ipv4 name guest-wireless default-log
set firewall ipv4 name guest-wireless rule 999 action 'drop'
set firewall ipv4 name guest-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-wireless rule 999 state invalid
set firewall ipv4 name guest-wireless rule 999 log

# From GUEST to LOCAL
set firewall ipv4 name guest-local default-action 'drop'
set firewall ipv4 name guest-local description 'From GUEST to LOCAL'
set firewall ipv4 name guest-local default-log
set firewall ipv4 name guest-local rule 50 action 'accept'
set firewall ipv4 name guest-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name guest-local rule 50 destination port '67,68'
set firewall ipv4 name guest-local rule 50 protocol 'udp'
set firewall ipv4 name guest-local rule 50 source port '67,68'
set firewall ipv4 name guest-local rule 999 action 'drop'
set firewall ipv4 name guest-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-local rule 999 state invalid
set firewall ipv4 name guest-local rule 999 log

# From GUEST to SERVERS
set firewall ipv4 name guest-servers default-action 'drop'
set firewall ipv4 name guest-servers description 'From GUEST to SERVERS'
set firewall ipv4 name guest-servers default-log
set firewall ipv4 name guest-servers rule 999 action 'drop'
set firewall ipv4 name guest-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-servers rule 999 state invalid
set firewall ipv4 name guest-servers rule 999 log

# From GUEST to CONTAINERS
set firewall ipv4 name guest-containers default-action 'drop'
set firewall ipv4 name guest-containers description 'From GUEST to CONTAINERS'
set firewall ipv4 name guest-containers default-log
set firewall ipv4 name guest-containers rule 40 action 'accept'
set firewall ipv4 name guest-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name guest-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name guest-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name guest-containers rule 999 action 'drop'
set firewall ipv4 name guest-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-containers rule 999 state invalid
set firewall ipv4 name guest-containers rule 999 log

# From GUEST to MGMT
set firewall ipv4 name guest-mgmt default-action 'drop'
set firewall ipv4 name guest-mgmt description 'From GUEST to MGMT'
set firewall ipv4 name guest-mgmt default-log
set firewall ipv4 name guest-mgmt rule 999 action 'drop'
set firewall ipv4 name guest-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-mgmt rule 999 state invalid
set firewall ipv4 name guest-mgmt rule 999 log

# From GUEST to VIDEO
set firewall ipv4 name guest-video default-action 'drop'
set firewall ipv4 name guest-video description 'From GUEST to VIDEO'
set firewall ipv4 name guest-video default-log
set firewall ipv4 name guest-video rule 999 action 'drop'
set firewall ipv4 name guest-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-video rule 999 state invalid
set firewall ipv4 name guest-video rule 999 log

# From GUEST to WAN
set firewall ipv4 name guest-wan default-action 'accept'
set firewall ipv4 name guest-wan description 'From GUEST to WAN'

# From IOT to GUEST
# set firewall ipv4 name iot-guest default-action 'drop'
# set firewall ipv4 name iot-guest description 'From IOT to GUEST'
# set firewall ipv4 name iot-guest default-log
# set firewall ipv4 name iot-guest rule 999 action 'drop'
# set firewall ipv4 name iot-guest rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-guest rule 999 state invalid
# set firewall ipv4 name iot-guest rule 999 log

# # From IOT to wireless
# set firewall ipv4 name iot-wireless default-action 'drop'
# set firewall ipv4 name iot-wireless description 'From IOT to wireless'
# set firewall ipv4 name iot-wireless default-log
# set firewall ipv4 name iot-wireless rule 999 action 'drop'
# set firewall ipv4 name iot-wireless rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-wireless rule 999 state invalid
# set firewall ipv4 name iot-wireless rule 999 log

# # From IOT to LOCAL
# set firewall ipv4 name iot-local default-action 'drop'
# set firewall ipv4 name iot-local description 'From IOT to LOCAL'
# set firewall ipv4 name iot-local default-log
# set firewall ipv4 name iot-local rule 50 action 'accept'
# set firewall ipv4 name iot-local rule 50 description 'Rule: accept_dhcp'
# set firewall ipv4 name iot-local rule 50 destination port '67,68'
# set firewall ipv4 name iot-local rule 50 protocol 'udp'
# set firewall ipv4 name iot-local rule 50 source port '67,68'
# set firewall ipv4 name iot-local rule 60 action 'accept'
# set firewall ipv4 name iot-local rule 60 description 'Rule: accept_ntp'
# set firewall ipv4 name iot-local rule 60 destination port 'ntp'
# set firewall ipv4 name iot-local rule 60 protocol 'udp'
# set firewall ipv4 name iot-local rule 100 action 'accept'
# set firewall ipv4 name iot-local rule 100 description 'Rule: accept_igmp'
# set firewall ipv4 name iot-local rule 100 protocol '2'
# set firewall ipv4 name iot-local rule 110 action 'accept'
# set firewall ipv4 name iot-local rule 110 description 'Rule: accept_mdns'
# set firewall ipv4 name iot-local rule 110 destination port 'mdns'
# set firewall ipv4 name iot-local rule 110 protocol 'udp'
# set firewall ipv4 name iot-local rule 110 source port 'mdns'
# set firewall ipv4 name iot-local rule 200 action 'accept'
# set firewall ipv4 name iot-local rule 200 description 'Rule: accept_discovery_from_sonos_players'
# set firewall ipv4 name iot-local rule 200 destination group port-group sonos-player-discovery
# set firewall ipv4 name iot-local rule 200 protocol 'udp'
# set firewall ipv4 name iot-local rule 200 source group address-group 'sonos_players'
# set firewall ipv4 name iot-local rule 300 action 'accept'
# set firewall ipv4 name iot-local rule 300 description 'Rule: accept_discovery_from_bambu_printers'
# set firewall ipv4 name iot-local rule 300 destination group port-group bambu-discovery
# set firewall ipv4 name iot-local rule 300 protocol 'udp'
# set firewall ipv4 name iot-local rule 300 source group address-group 'bambu-printers'
# set firewall ipv4 name iot-local rule 999 action 'drop'
# set firewall ipv4 name iot-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-local rule 999 state invalid
# set firewall ipv4 name iot-local rule 999 log

# # From IOT to SERVERS
# set firewall ipv4 name iot-servers default-action 'drop'
# set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
# set firewall ipv4 name iot-servers default-log
# set firewall ipv4 name iot-servers rule 100 action 'accept'
# set firewall ipv4 name iot-servers rule 100 description 'Rule: accept_nas_smb_from_scanners'
# set firewall ipv4 name iot-servers rule 100 destination group address-group 'nas'
# set firewall ipv4 name iot-servers rule 100 destination port 'microsoft-ds'
# set firewall ipv4 name iot-servers rule 100 protocol 'tcp'
# set firewall ipv4 name iot-servers rule 100 source group address-group 'scanners'
# set firewall ipv4 name iot-servers rule 200 action 'accept'
# set firewall ipv4 name iot-servers rule 200 description 'Rule: accept_plex_from_plex_clients'
# set firewall ipv4 name iot-servers rule 200 destination group address-group 'k8s_plex'
# set firewall ipv4 name iot-servers rule 200 destination port '32400'
# set firewall ipv4 name iot-servers rule 200 protocol 'tcp'
# set firewall ipv4 name iot-servers rule 200 source group address-group 'plex_clients'
# set firewall ipv4 name iot-servers rule 300 action 'accept'
# set firewall ipv4 name iot-servers rule 300 description 'Rule: accept_mqtt_from_mqtt_clients'
# set firewall ipv4 name iot-servers rule 300 destination group address-group 'k8s_mqtt'
# set firewall ipv4 name iot-servers rule 300 destination port '1883'
# set firewall ipv4 name iot-servers rule 300 protocol 'tcp'
# set firewall ipv4 name iot-servers rule 300 source group address-group 'mqtt_clients'
# set firewall ipv4 name iot-servers rule 400 action 'accept'
# set firewall ipv4 name iot-servers rule 400 description 'Rule: accept_k8s_ingress_from_sonos_players'
# set firewall ipv4 name iot-servers rule 400 destination group address-group 'k8s_ingress'
# set firewall ipv4 name iot-servers rule 400 destination port 'http,https'
# set firewall ipv4 name iot-servers rule 400 protocol 'tcp'
# set firewall ipv4 name iot-servers rule 400 source group address-group 'sonos_players'
# set firewall ipv4 name iot-servers rule 410 action 'accept'
# set firewall ipv4 name iot-servers rule 410 description 'Rule: accept_k8s_ingress_from_allowed_devices'
# set firewall ipv4 name iot-servers rule 410 destination group address-group 'k8s_ingress'
# set firewall ipv4 name iot-servers rule 410 destination port 'http,https'
# set firewall ipv4 name iot-servers rule 410 protocol 'tcp'
# set firewall ipv4 name iot-servers rule 410 source group address-group 'k8s_ingress_allowed'
# set firewall ipv4 name iot-servers rule 999 action 'drop'
# set firewall ipv4 name iot-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-servers rule 999 state invalid
# set firewall ipv4 name iot-servers rule 999 log

# # From IOT to CONTAINERS
# set firewall ipv4 name iot-containers default-action 'accept'
# set firewall ipv4 name iot-containers description 'From IOT to CONTAINERS'
# set firewall ipv4 name iot-containers rule 40 action 'accept'
# set firewall ipv4 name iot-containers rule 40 description 'Rule: accept_dns'
# set firewall ipv4 name iot-containers rule 40 destination port 'domain,domain-s'
# set firewall ipv4 name iot-containers rule 40 protocol 'tcp_udp'
# set firewall ipv4 name iot-containers rule 999 action 'drop'
# set firewall ipv4 name iot-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-containers rule 999 state invalid
# set firewall ipv4 name iot-containers rule 999 log

# # From IOT to MGMT
# set firewall ipv4 name iot-mgmt default-action 'drop'
# set firewall ipv4 name iot-mgmt description 'From IOT to MGMT'
# set firewall ipv4 name iot-mgmt default-log
# set firewall ipv4 name iot-mgmt rule 100 action 'accept'
# set firewall ipv4 name iot-mgmt rule 100 description 'Rule: accept_udp_from_sonos_players_to_sonos_controllers'
# set firewall ipv4 name iot-mgmt rule 100 destination group address-group 'sonos_controllers'
# set firewall ipv4 name iot-mgmt rule 100 destination port '319,320,30000-65535'
# set firewall ipv4 name iot-mgmt rule 100 protocol 'udp'
# set firewall ipv4 name iot-mgmt rule 100 source group address-group 'sonos_players'
# set firewall ipv4 name iot-mgmt rule 110 action 'accept'
# set firewall ipv4 name iot-mgmt rule 110 description 'Rule: accept_tcp_from_sonos_players_to_sonos_controllers'
# set firewall ipv4 name iot-mgmt rule 110 destination group address-group 'sonos_controllers'
# set firewall ipv4 name iot-mgmt rule 110 destination port '1400,3400,3401,3500,30000-65535'
# set firewall ipv4 name iot-mgmt rule 110 protocol 'tcp'
# set firewall ipv4 name iot-mgmt rule 110 source group address-group 'sonos_players'
# set firewall ipv4 name iot-mgmt rule 999 action 'drop'
# set firewall ipv4 name iot-mgmt rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-mgmt rule 999 state invalid
# set firewall ipv4 name iot-mgmt rule 999 log

# # From IOT to VIDEO
# set firewall ipv4 name iot-video default-action 'drop'
# set firewall ipv4 name iot-video description 'From IOT to VIDEO'
# set firewall ipv4 name iot-video default-log
# set firewall ipv4 name iot-video rule 100 action 'accept'
# set firewall ipv4 name iot-video rule 100 description 'Rule: accept_k8s_nodes'
# set firewall ipv4 name iot-video rule 100 protocol 'tcp'
# set firewall ipv4 name iot-video rule 100 source group address-group 'k8s_nodes'
# set firewall ipv4 name iot-video rule 999 action 'drop'
# set firewall ipv4 name iot-video rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-video rule 999 state invalid
# set firewall ipv4 name iot-video rule 999 log

# # From IOT to WAN
# set firewall ipv4 name iot-wan default-action 'accept'
# set firewall ipv4 name iot-wan description 'From IOT to WAN'

# From WIRELESS to GUEST
set firewall ipv4 name wireless-guest default-action 'drop'
set firewall ipv4 name wireless-guest description 'From WIRELESS to GUEST'
set firewall ipv4 name wireless-guest default-log
set firewall ipv4 name wireless-guest rule 999 action 'drop'
set firewall ipv4 name wireless-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-guest rule 999 state invalid
set firewall ipv4 name wireless-guest rule 999 log

# From wireless to IOT
set firewall ipv4 name wireless-iot default-action 'drop'
set firewall ipv4 name wireless-iot description 'From WIRELESS to IOT'
set firewall ipv4 name wireless-iot default-log
set firewall ipv4 name wireless-iot rule 999 action 'drop'
set firewall ipv4 name wireless-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-iot rule 999 state invalid
set firewall ipv4 name wireless-iot rule 999 log

# From WIRELESS to LOCAL
set firewall ipv4 name wireless-local default-action 'drop'
set firewall ipv4 name wireless-local description 'From WIRELESS to LOCAL'
set firewall ipv4 name wireless-local default-log
set firewall ipv4 name wireless-local rule 50 action 'accept'
set firewall ipv4 name wireless-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name wireless-local rule 50 destination port '67,68'
set firewall ipv4 name wireless-local rule 50 protocol 'udp'
set firewall ipv4 name wireless-local rule 50 source port '67,68'
set firewall ipv4 name wireless-local rule 60 action 'accept'
set firewall ipv4 name wireless-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name wireless-local rule 60 destination port 'ntp'
set firewall ipv4 name wireless-local rule 60 protocol 'udp'
set firewall ipv4 name wireless-local rule 400 action 'accept'
set firewall ipv4 name wireless-local rule 400 description 'Rule: accept_ssh'
set firewall ipv4 name wireless-local rule 400 destination port 'ssh'
set firewall ipv4 name wireless-local rule 400 protocol 'tcp'
set firewall ipv4 name wireless-local rule 999 action 'drop'
set firewall ipv4 name wireless-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-local rule 999 state invalid
set firewall ipv4 name wireless-local rule 999 log

# From WIRELESS to SERVERS
set firewall ipv4 name wireless-servers default-action 'drop'
set firewall ipv4 name wireless-servers description 'From WIRELESS to SERVERS'
set firewall ipv4 name wireless-servers default-log
set firewall ipv4 name wireless-servers rule 999 action 'drop'
set firewall ipv4 name wireless-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-servers rule 999 state invalid
set firewall ipv4 name wireless-servers rule 999 log

# From WIRELESS to CONTAINERS
set firewall ipv4 name wireless-containers default-action 'accept'
set firewall ipv4 name wireless-containers description 'From WIRELESS to CONTAINERS'
set firewall ipv4 name wireless-containers rule 40 action 'accept'
set firewall ipv4 name wireless-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name wireless-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name wireless-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name wireless-containers rule 999 action 'drop'
set firewall ipv4 name wireless-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-containers rule 999 state invalid
set firewall ipv4 name wireless-containers rule 999 log

# From WIRELESS to MGMT
set firewall ipv4 name wireless-mgmt default-action 'drop'
set firewall ipv4 name wireless-mgmt description 'From WIRELESS to MGMT'
set firewall ipv4 name wireless-mgmt default-log
set firewall ipv4 name wireless-mgmt rule 999 action 'drop'
set firewall ipv4 name wireless-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-mgmt rule 999 state invalid
set firewall ipv4 name wireless-mgmt rule 999 log

# From WIRELESS to VIDEO
set firewall ipv4 name wireless-video default-action 'drop'
set firewall ipv4 name wireless-video description 'From WIRELESS to VIDEO'
set firewall ipv4 name wireless-video default-log
set firewall ipv4 name wireless-video rule 999 action 'drop'
set firewall ipv4 name wireless-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wireless-video rule 999 state invalid
set firewall ipv4 name wireless-video rule 999 log

# From WIRELESS to WAN
set firewall ipv4 name wireless-wan default-action 'accept'
set firewall ipv4 name wireless-wan description 'From WIRELESS to WAN'

# From LOCAL to GUEST
set firewall ipv4 name local-guest default-action 'drop'
set firewall ipv4 name local-guest description 'From LOCAL to GUEST'
set firewall ipv4 name local-guest default-log
set firewall ipv4 name local-guest rule 999 action 'drop'
set firewall ipv4 name local-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-guest rule 999 state invalid
set firewall ipv4 name local-guest rule 999 log

# From LOCAL to IOT
set firewall ipv4 name local-iot default-action 'drop'
set firewall ipv4 name local-iot description 'From LOCAL to IOT'
set firewall ipv4 name local-iot default-log
set firewall ipv4 name local-iot rule 100 action 'accept'
set firewall ipv4 name local-iot rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name local-iot rule 100 protocol '2'
set firewall ipv4 name local-iot rule 110 action 'accept'
set firewall ipv4 name local-iot rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name local-iot rule 110 destination port 'mdns'
set firewall ipv4 name local-iot rule 110 protocol 'udp'
set firewall ipv4 name local-iot rule 110 source port 'mdns'
set firewall ipv4 name local-iot rule 200 action 'accept'
set firewall ipv4 name local-iot rule 200 description 'Rule: accept_discovery_from_sonos_controllers'
set firewall ipv4 name local-iot rule 200 destination group port-group sonos-controller-discovery
set firewall ipv4 name local-iot rule 200 protocol 'udp'
set firewall ipv4 name local-iot rule 200 source group address-group 'sonos_controllers'
set firewall ipv4 name local-iot rule 999 action 'drop'
set firewall ipv4 name local-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-iot rule 999 state invalid
set firewall ipv4 name local-iot rule 999 log

# From LOCAL to WIRELESS
set firewall ipv4 name local-wireless default-action 'drop'
set firewall ipv4 name local-wireless description 'From LOCAL to wireless'
set firewall ipv4 name local-wireless default-log
set firewall ipv4 name local-wireless rule 999 action 'drop'
set firewall ipv4 name local-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-wireless rule 999 state invalid
set firewall ipv4 name local-wireless rule 999 log

# From LOCAL to SERVERS
set firewall ipv4 name local-servers default-action 'drop'
set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
set firewall ipv4 name local-servers default-log
set firewall ipv4 name local-servers rule 40 action 'accept'
set firewall ipv4 name local-servers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name local-servers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name local-servers rule 40 protocol 'tcp_udp'
set firewall ipv4 name local-servers rule 70 action 'accept'
set firewall ipv4 name local-servers rule 70 description 'Rule: accept_bgp'
set firewall ipv4 name local-servers rule 70 destination port 'bgp'
set firewall ipv4 name local-servers rule 70 protocol 'tcp'
set firewall ipv4 name local-servers rule 100 action 'accept'
set firewall ipv4 name local-servers rule 100 description 'Rule: accept_k8s_api'
set firewall ipv4 name local-servers rule 100 destination port '6443'
set firewall ipv4 name local-servers rule 100 protocol 'tcp'
set firewall ipv4 name local-servers rule 200 action 'accept'
set firewall ipv4 name local-servers rule 200 description 'Rule: accept_vector_syslog'
set firewall ipv4 name local-servers rule 200 destination group address-group 'k8s_vector_aggregator'
set firewall ipv4 name local-servers rule 200 destination port '6001'
set firewall ipv4 name local-servers rule 200 protocol 'tcp'
set firewall ipv4 name local-servers rule 999 action 'drop'
set firewall ipv4 name local-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-servers rule 999 state invalid
set firewall ipv4 name local-servers rule 999 log

# From LOCAL to CONTAINERS
set firewall ipv4 name local-containers default-action 'accept'
set firewall ipv4 name local-containers description 'From LOCAL to CONTAINERS'
set firewall ipv4 name local-containers rule 40 action 'accept'
set firewall ipv4 name local-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name local-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name local-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name local-containers rule 999 action 'drop'
set firewall ipv4 name local-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-containers rule 999 state invalid
set firewall ipv4 name local-containers rule 999 log

# From LOCAL to MGMT
set firewall ipv4 name local-mgmt default-action 'drop'
set firewall ipv4 name local-mgmt description 'From LOCAL to MGMT'
set firewall ipv4 name local-mgmt default-log
set firewall ipv4 name local-mgmt rule 100 action 'accept'
set firewall ipv4 name local-mgmt rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name local-mgmt rule 100 protocol '2'
set firewall ipv4 name local-mgmt rule 110 action 'accept'
set firewall ipv4 name local-mgmt rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name local-mgmt rule 110 destination port 'mdns'
set firewall ipv4 name local-mgmt rule 110 protocol 'udp'
set firewall ipv4 name local-mgmt rule 110 source port 'mdns'
set firewall ipv4 name local-mgmt rule 200 action 'accept'
set firewall ipv4 name local-mgmt rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv4 name local-mgmt rule 200 destination group port-group sonos-player-discovery
set firewall ipv4 name local-mgmt rule 200 protocol 'udp'
set firewall ipv4 name local-mgmt rule 200 source group address-group 'sonos_players'
# set firewall ipv4 name local-mgmt rule 300 action 'accept'
# set firewall ipv4 name local-mgmt rule 300 description 'Rule: accept_discovery_from_bambu_printers'
# set firewall ipv4 name local-mgmt rule 300 destination group port-group bambu-discovery
# set firewall ipv4 name local-mgmt rule 300 protocol 'udp'
# set firewall ipv4 name local-mgmt rule 300 source group address-group 'bambu-printers'
set firewall ipv4 name local-mgmt rule 400 action 'accept'
set firewall ipv4 name local-mgmt rule 400 description 'Rule: accept_wireguard'
set firewall ipv4 name local-mgmt rule 400 source port '51820'
set firewall ipv4 name local-mgmt rule 400 protocol 'udp'
set firewall ipv4 name local-mgmt rule 999 action 'drop'
set firewall ipv4 name local-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-mgmt rule 999 state invalid
set firewall ipv4 name local-mgmt rule 999 log

# From LOCAL to VIDEO
set firewall ipv4 name local-video default-action 'drop'
set firewall ipv4 name local-video description 'From LOCAL to VIDEO'
set firewall ipv4 name local-video default-log
set firewall ipv4 name local-video rule 999 action 'drop'
set firewall ipv4 name local-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-video rule 999 state invalid
set firewall ipv4 name local-video rule 999 log

# From LOCAL to WAN
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan description 'From LOCAL to WAN'

# From SERVERS to GUEST
set firewall ipv4 name servers-guest default-action 'drop'
set firewall ipv4 name servers-guest description 'From SERVERS to GUEST'
set firewall ipv4 name servers-guest default-log
set firewall ipv4 name servers-guest rule 999 action 'drop'
set firewall ipv4 name servers-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-guest rule 999 state invalid
set firewall ipv4 name servers-guest rule 999 log

# From SERVERS to IOT
set firewall ipv4 name servers-iot default-action 'drop'
set firewall ipv4 name servers-iot description 'From SERVERS to IOT'
set firewall ipv4 name servers-iot default-log
set firewall ipv4 name servers-iot rule 100 action 'accept'
set firewall ipv4 name servers-iot rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 100 protocol 'tcp'
set firewall ipv4 name servers-iot rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 110 action 'accept'
set firewall ipv4 name servers-iot rule 110 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 110 protocol 'icmp'
set firewall ipv4 name servers-iot rule 110 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 999 action 'drop'
set firewall ipv4 name servers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-iot rule 999 state invalid
set firewall ipv4 name servers-iot rule 999 log

# From SERVERS to WIRELESS
set firewall ipv4 name servers-wireless default-action 'drop'
set firewall ipv4 name servers-wireless description 'From SERVERS to WIRELESS'
set firewall ipv4 name servers-wireless default-log
set firewall ipv4 name servers-wireless rule 999 action 'drop'
set firewall ipv4 name servers-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-wireless rule 999 state invalid
set firewall ipv4 name servers-wireless rule 999 log

# From SERVERS to LOCAL
set firewall ipv4 name servers-local default-action 'drop'
set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
set firewall ipv4 name servers-local default-log
set firewall ipv4 name servers-local rule 50 action 'accept'
set firewall ipv4 name servers-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name servers-local rule 50 destination port '67,68'
set firewall ipv4 name servers-local rule 50 protocol 'udp'
set firewall ipv4 name servers-local rule 50 source port '67,68'
set firewall ipv4 name servers-local rule 60 action 'accept'
set firewall ipv4 name servers-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name servers-local rule 60 destination port 'ntp'
set firewall ipv4 name servers-local rule 60 protocol 'udp'
set firewall ipv4 name servers-local rule 70 action 'accept'
set firewall ipv4 name servers-local rule 70 description 'Rule: accept_bgp'
set firewall ipv4 name servers-local rule 70 destination port 'bgp'
set firewall ipv4 name servers-local rule 70 protocol 'tcp'
set firewall ipv4 name servers-local rule 80 action 'accept'
set firewall ipv4 name servers-local rule 80 description 'Rule: accept_tftp'
set firewall ipv4 name servers-local rule 80 destination port '69'
set firewall ipv4 name servers-local rule 80 protocol 'udp'
set firewall ipv4 name servers-local rule 100 action 'accept'
set firewall ipv4 name servers-local rule 100 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 100 destination port '9100'
set firewall ipv4 name servers-local rule 100 protocol 'tcp'
set firewall ipv4 name servers-local rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 110 action 'accept'
set firewall ipv4 name servers-local rule 110 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 110 destination port '9798'
set firewall ipv4 name servers-local rule 110 protocol 'tcp'
set firewall ipv4 name servers-local rule 110 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 999 action 'drop'
set firewall ipv4 name servers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-local rule 999 state invalid
set firewall ipv4 name servers-local rule 999 log

# From SERVERS to CONTAINERS
set firewall ipv4 name servers-containers default-action 'accept'
set firewall ipv4 name servers-containers description 'From SERVERS to CONTAINERS'
set firewall ipv4 name servers-containers default-log
set firewall ipv4 name servers-containers rule 40 action 'accept'
set firewall ipv4 name servers-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name servers-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name servers-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name servers-containers rule 100 action 'accept'
set firewall ipv4 name servers-containers rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-containers rule 100 protocol 'tcp'
set firewall ipv4 name servers-containers rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-containers rule 999 action 'drop'
set firewall ipv4 name servers-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-containers rule 999 state invalid
set firewall ipv4 name servers-containers rule 999 log

# From SERVERS to MGMT
set firewall ipv4 name servers-mgmt default-action 'drop'
set firewall ipv4 name servers-mgmt description 'From SERVERS to MGMT'
set firewall ipv4 name servers-mgmt default-log
set firewall ipv4 name servers-mgmt rule 999 action 'drop'
set firewall ipv4 name servers-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-mgmt rule 999 state invalid
set firewall ipv4 name servers-mgmt rule 999 log

# From SERVERS to VIDEO
set firewall ipv4 name servers-video default-action 'drop'
set firewall ipv4 name servers-video description 'From SERVERS to VIDEO'
set firewall ipv4 name servers-video default-log
set firewall ipv4 name servers-video rule 100 action 'accept'
set firewall ipv4 name servers-video rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-video rule 100 protocol 'tcp_udp'
set firewall ipv4 name servers-video rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-video rule 999 action 'drop'
set firewall ipv4 name servers-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-video rule 999 state invalid
set firewall ipv4 name servers-video rule 999 log

# From SERVERS to WAN
set firewall ipv4 name servers-wan default-action 'accept'
set firewall ipv4 name servers-wan description 'From SERVERS to WAN'

# From CONTAINERS to GUEST
set firewall ipv4 name containers-guest default-action 'drop'
set firewall ipv4 name containers-guest description 'From CONTAINERS to GUEST'
set firewall ipv4 name containers-guest default-log
set firewall ipv4 name containers-guest rule 999 action 'drop'
set firewall ipv4 name containers-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-guest rule 999 state invalid
set firewall ipv4 name containers-guest rule 999 log

# From CONTAINERS to IOT
set firewall ipv4 name containers-iot default-action 'drop'
set firewall ipv4 name containers-iot description 'From CONTAINERS to IOT'
set firewall ipv4 name containers-iot default-log
set firewall ipv4 name containers-iot rule 999 action 'drop'
set firewall ipv4 name containers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-iot rule 999 state invalid
set firewall ipv4 name containers-iot rule 999 log

# From CONTAINERS to WIRELESS
set firewall ipv4 name containers-wireless default-action 'drop'
set firewall ipv4 name containers-wireless description 'From CONTAINERS to WIRELESS'
set firewall ipv4 name containers-wireless default-log
set firewall ipv4 name containers-wireless rule 999 action 'drop'
set firewall ipv4 name containers-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-wireless rule 999 state invalid
set firewall ipv4 name containers-wireless rule 999 log

# From CONTAINERS to LOCAL
set firewall ipv4 name containers-local default-action 'drop'
set firewall ipv4 name containers-local description 'From CONTAINERS to LOCAL'
set firewall ipv4 name containers-local default-log
set firewall ipv4 name containers-local rule 50 action 'accept'
set firewall ipv4 name containers-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name containers-local rule 50 destination port '67,68'
set firewall ipv4 name containers-local rule 50 protocol 'udp'
set firewall ipv4 name containers-local rule 50 source port '67,68'
set firewall ipv4 name containers-local rule 60 action 'accept'
set firewall ipv4 name containers-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name containers-local rule 60 destination port 'ntp'
set firewall ipv4 name containers-local rule 60 protocol 'udp'
set firewall ipv4 name containers-local rule 999 action 'drop'
set firewall ipv4 name containers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-local rule 999 state invalid
set firewall ipv4 name containers-local rule 999 log

# From CONTAINERS to SERVERS
set firewall ipv4 name containers-servers default-action 'accept'
set firewall ipv4 name containers-servers description 'From CONTAINERS to SERVERS'
set firewall ipv4 name containers-servers rule 999 action 'drop'
set firewall ipv4 name containers-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-servers rule 999 state invalid
set firewall ipv4 name containers-servers rule 999 log

# From CONTAINERS to MGMT
set firewall ipv4 name containers-mgmt default-action 'drop'
set firewall ipv4 name containers-mgmt description 'From CONTAINERS to MGMT'
set firewall ipv4 name containers-mgmt default-log
set firewall ipv4 name containers-mgmt rule 999 action 'drop'
set firewall ipv4 name containers-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-mgmt rule 999 state invalid
set firewall ipv4 name containers-mgmt rule 999 log

# From CONTAINERS to VIDEO
set firewall ipv4 name containers-video default-action 'drop'
set firewall ipv4 name containers-video description 'From CONTAINERS to VIDEO'
set firewall ipv4 name containers-video default-log
set firewall ipv4 name containers-video rule 999 action 'drop'
set firewall ipv4 name containers-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-video rule 999 state invalid
set firewall ipv4 name containers-video rule 999 log

# From CONTAINERS to WAN
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan description 'From CONTAINERS to WAN'

# From MGMT to GUEST
set firewall ipv4 name mgmt-guest default-action 'drop'
set firewall ipv4 name mgmt-guest description 'From MGMT to GUEST'
set firewall ipv4 name mgmt-guest default-log
set firewall ipv4 name mgmt-guest rule 999 action 'drop'
set firewall ipv4 name mgmt-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-guest rule 999 state invalid
set firewall ipv4 name mgmt-guest rule 999 log

# From MGMT to IOT
set firewall ipv4 name mgmt-iot default-action 'accept'
set firewall ipv4 name mgmt-iot description 'From MGMT to IOT'
set firewall ipv4 name mgmt-iot rule 110 action 'accept'
set firewall ipv4 name mgmt-iot rule 110 description 'Rule: accept_tcp_from_sonos_controllers_to_sonos_players'
set firewall ipv4 name mgmt-iot rule 110 destination port '1400,1443,4444,7000,30000-65535'
set firewall ipv4 name mgmt-iot rule 110 protocol 'tcp'
set firewall ipv4 name mgmt-iot rule 110 source group address-group 'sonos_controllers'
set firewall ipv4 name mgmt-iot rule 111 action 'accept'
set firewall ipv4 name mgmt-iot rule 111 description 'Rule: accept_udp_from_sonos_controllers_to_sonos_players'
set firewall ipv4 name mgmt-iot rule 111 destination port '319,320,30000-65535'
set firewall ipv4 name mgmt-iot rule 111 protocol 'udp'
set firewall ipv4 name mgmt-iot rule 111 source group address-group 'sonos_controllers'
set firewall ipv4 name mgmt-iot rule 999 action 'drop'
set firewall ipv4 name mgmt-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-iot rule 999 state invalid
set firewall ipv4 name mgmt-iot rule 999 log

# From MGMT to WIRELESS
set firewall ipv4 name mgmt-wireless default-action 'accept'
set firewall ipv4 name mgmt-wireless description 'From MGMT to WIRELESS'
set firewall ipv4 name mgmt-wireless rule 999 action 'drop'
set firewall ipv4 name mgmt-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-wireless rule 999 state invalid
set firewall ipv4 name mgmt-wireless rule 999 log

# From MGMT to LOCAL
set firewall ipv4 name mgmt-local default-action 'drop'
set firewall ipv4 name mgmt-local description 'From MGMT to LOCAL'
set firewall ipv4 name mgmt-local default-log
set firewall ipv4 name mgmt-local rule 50 action 'accept'
set firewall ipv4 name mgmt-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name mgmt-local rule 50 destination port '67,68'
set firewall ipv4 name mgmt-local rule 50 protocol 'udp'
set firewall ipv4 name mgmt-local rule 50 source port '67,68'
set firewall ipv4 name mgmt-local rule 60 action 'accept'
set firewall ipv4 name mgmt-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name mgmt-local rule 60 destination port 'ntp'
set firewall ipv4 name mgmt-local rule 60 protocol 'udp'
set firewall ipv4 name mgmt-local rule 100 action 'accept'
set firewall ipv4 name mgmt-local rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name mgmt-local rule 100 protocol '2'
set firewall ipv4 name mgmt-local rule 110 action 'accept'
set firewall ipv4 name mgmt-local rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name mgmt-local rule 110 destination port 'mdns'
set firewall ipv4 name mgmt-local rule 110 protocol 'udp'
set firewall ipv4 name mgmt-local rule 110 source port 'mdns'
set firewall ipv4 name mgmt-local rule 210 action 'accept'
set firewall ipv4 name mgmt-local rule 210 description 'Rule: accept_discovery_from_sonos_controllers'
set firewall ipv4 name mgmt-local rule 210 destination group port-group sonos-controller-discovery
set firewall ipv4 name mgmt-local rule 210 protocol 'udp'
set firewall ipv4 name mgmt-local rule 210 source group address-group 'sonos_controllers'
set firewall ipv4 name mgmt-local rule 211 action 'accept'
set firewall ipv4 name mgmt-local rule 211 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv4 name mgmt-local rule 211 destination group port-group sonos-player-discovery
set firewall ipv4 name mgmt-local rule 211 protocol 'udp'
set firewall ipv4 name mgmt-local rule 211 source group address-group 'sonos_players'
set firewall ipv4 name mgmt-local rule 300 action 'accept'
set firewall ipv4 name mgmt-local rule 400 action 'accept'
set firewall ipv4 name mgmt-local rule 400 description 'Rule: accept_ssh'
set firewall ipv4 name mgmt-local rule 400 destination port 'ssh'
set firewall ipv4 name mgmt-local rule 400 protocol 'tcp'
set firewall ipv4 name mgmt-local rule 410 action 'accept'
set firewall ipv4 name mgmt-local rule 410 description 'Rule: accept_vyos_api'
set firewall ipv4 name mgmt-local rule 410 destination port '8443'
set firewall ipv4 name mgmt-local rule 410 protocol 'tcp'
set firewall ipv4 name mgmt-local rule 420 action 'accept'
set firewall ipv4 name mgmt-local rule 420 description 'Rule: accept_wireguard'
set firewall ipv4 name mgmt-local rule 420 destination port '51820'
set firewall ipv4 name mgmt-local rule 420 protocol 'udp'
set firewall ipv4 name mgmt-local rule 999 action 'drop'
set firewall ipv4 name mgmt-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-local rule 999 state invalid
set firewall ipv4 name mgmt-local rule 999 log

# From MGMT to SERVERS
set firewall ipv4 name mgmt-servers default-action 'accept'
set firewall ipv4 name mgmt-servers description 'From MGMT to SERVERS'
set firewall ipv4 name mgmt-servers rule 999 action 'drop'
set firewall ipv4 name mgmt-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-servers rule 999 state invalid
set firewall ipv4 name mgmt-servers rule 999 log

# From MGMT to CONTAINERS
set firewall ipv4 name mgmt-containers default-action 'accept'
set firewall ipv4 name mgmt-containers description 'From MGMT to CONTAINERS'
set firewall ipv4 name mgmt-containers rule 40 action 'accept'
set firewall ipv4 name mgmt-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name mgmt-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name mgmt-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name mgmt-containers rule 999 action 'drop'
set firewall ipv4 name mgmt-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-containers rule 999 state invalid
set firewall ipv4 name mgmt-containers rule 999 log

# From MGMT to VIDEO
set firewall ipv4 name mgmt-video default-action 'accept'
set firewall ipv4 name mgmt-video description 'From MGMT to VIDEO'
set firewall ipv4 name mgmt-video rule 999 action 'drop'
set firewall ipv4 name mgmt-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-video rule 999 state invalid
set firewall ipv4 name mgmt-video rule 999 log

# From MGMT to WAN
set firewall ipv4 name mgmt-wan default-action 'accept'
set firewall ipv4 name mgmt-wan description 'From MGMT to WAN'

# From VIDEO to GUEST
set firewall ipv4 name video-guest default-action 'drop'
set firewall ipv4 name video-guest description 'From VIDEO to GUEST'
set firewall ipv4 name video-guest default-log
set firewall ipv4 name video-guest rule 999 action 'drop'
set firewall ipv4 name video-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-guest rule 999 state invalid
set firewall ipv4 name video-guest rule 999 log

# From VIDEO to IOT
set firewall ipv4 name video-iot default-action 'drop'
set firewall ipv4 name video-iot description 'From VIDEO to IOT'
set firewall ipv4 name video-iot default-log
set firewall ipv4 name video-iot rule 100 action 'accept'
set firewall ipv4 name video-iot rule 100 description 'Rule: allow connecting to hass'
set firewall ipv4 name video-iot rule 100 protocol 'tcp'
set firewall ipv4 name video-iot rule 100 destination group address-group 'k8s_hass'
set firewall ipv4 name video-iot rule 100 destination port '8123'
set firewall ipv4 name video-iot rule 999 action 'drop'
set firewall ipv4 name video-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-iot rule 999 state invalid
set firewall ipv4 name video-iot rule 999 log

# From VIDEO to WIRELESS
set firewall ipv4 name video-wireless default-action 'drop'
set firewall ipv4 name video-wireless description 'From VIDEO to wireless'
set firewall ipv4 name video-wireless default-log
set firewall ipv4 name video-wireless rule 999 action 'drop'
set firewall ipv4 name video-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-wireless rule 999 state invalid
set firewall ipv4 name video-wireless rule 999 log

# From VIDEO to LOCAL
set firewall ipv4 name video-local default-action 'drop'
set firewall ipv4 name video-local description 'From VIDEO to LOCAL'
set firewall ipv4 name video-local default-log
set firewall ipv4 name video-local rule 50 action 'accept'
set firewall ipv4 name video-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name video-local rule 50 destination port '67,68'
set firewall ipv4 name video-local rule 50 protocol 'udp'
set firewall ipv4 name video-local rule 50 source port '67,68'
set firewall ipv4 name video-local rule 60 action 'accept'
set firewall ipv4 name video-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name video-local rule 60 destination port 'ntp'
set firewall ipv4 name video-local rule 60 protocol 'udp'
set firewall ipv4 name video-local rule 999 action 'drop'
set firewall ipv4 name video-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-local rule 999 state invalid
set firewall ipv4 name video-local rule 999 log

# From VIDEO to SERVERS
set firewall ipv4 name video-servers default-action 'drop'
set firewall ipv4 name video-servers description 'From VIDEO to SERVERS'
set firewall ipv4 name video-servers default-log
set firewall ipv4 name video-servers rule 100 action 'accept'
set firewall ipv4 name video-servers rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name video-servers rule 100 protocol 'udp'
set firewall ipv4 name video-servers rule 100 destination group address-group 'k8s_nodes'
set firewall ipv4 name video-servers rule 100 source port '6987-6989'
set firewall ipv4 name video-servers rule 999 action 'drop'
set firewall ipv4 name video-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-servers rule 999 state invalid
set firewall ipv4 name video-servers rule 999 log

# From VIDEO to CONTAINERS
set firewall ipv4 name video-containers default-action 'accept'
set firewall ipv4 name video-containers description 'From VIDEO to CONTAINERS'
set firewall ipv4 name video-containers rule 40 action 'accept'
set firewall ipv4 name video-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name video-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name video-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name video-containers rule 999 action 'drop'
set firewall ipv4 name video-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-containers rule 999 state invalid
set firewall ipv4 name video-containers rule 999 log

# From VIDEO to MGMT
set firewall ipv4 name video-mgmt default-action 'drop'
set firewall ipv4 name video-mgmt description 'From VIDEO to MGMT'
set firewall ipv4 name video-mgmt default-log
set firewall ipv4 name video-mgmt rule 999 action 'drop'
set firewall ipv4 name video-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name video-mgmt rule 999 state invalid
set firewall ipv4 name video-mgmt rule 999 log

# From VIDEO to WAN
set firewall ipv4 name video-wan default-action 'drop'
set firewall ipv4 name video-wan description 'From VIDEO to WAN'

# From WAN to GUEST
set firewall ipv4 name wan-guest default-action 'drop'
set firewall ipv4 name wan-guest description 'From WAN to GUEST'
set firewall ipv4 name wan-guest default-log
set firewall ipv4 name wan-guest rule 999 action 'drop'
set firewall ipv4 name wan-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-guest rule 999 state invalid
set firewall ipv4 name wan-guest rule 999 log

# From WAN to IOT
set firewall ipv4 name wan-iot default-action 'drop'
set firewall ipv4 name wan-iot description 'From WAN to IOT'
set firewall ipv4 name wan-iot default-log
set firewall ipv4 name wan-iot rule 999 action 'drop'
set firewall ipv4 name wan-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-iot rule 999 state invalid
set firewall ipv4 name wan-iot rule 999 log

# From WAN to WIRELESS
set firewall ipv4 name wan-wireless default-action 'drop'
set firewall ipv4 name wan-wireless description 'From WAN to WIRELESS'
set firewall ipv4 name wan-wireless default-log
set firewall ipv4 name wan-wireless rule 999 action 'drop'
set firewall ipv4 name wan-wireless rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-wireless rule 999 state invalid
set firewall ipv4 name wan-wireless rule 999 log

# From WAN to LOCAL
set firewall ipv4 name wan-local default-action 'drop'
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local default-log
set firewall ipv4 name wan-local rule 1 action 'drop'
set firewall ipv4 name wan-local rule 1 description 'Rule: drop_invalid'
set firewall ipv4 name wan-local rule 1 state invalid
set firewall ipv4 name wan-local rule 1 log
set firewall ipv4 name wan-local rule 100 action 'accept'
set firewall ipv4 name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 100 destination port '51820'
set firewall ipv4 name wan-local rule 100 protocol 'udp'

# From WAN to SERVERS
set firewall ipv4 name wan-servers default-action 'drop'
set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
set firewall ipv4 name wan-servers default-log
set firewall ipv4 name wan-servers rule 999 action 'drop'
set firewall ipv4 name wan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-servers rule 999 state invalid
set firewall ipv4 name wan-servers rule 999 log

# From WAN to CONTAINERS
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers description 'From WAN to CONTAINERS'
set firewall ipv4 name wan-containers default-log
set firewall ipv4 name wan-containers rule 999 action 'drop'
set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-containers rule 999 state invalid
set firewall ipv4 name wan-containers rule 999 log

# From WAN to MGMT
set firewall ipv4 name wan-mgmt default-action 'drop'
set firewall ipv4 name wan-mgmt description 'From WAN to MGMT'
set firewall ipv4 name wan-mgmt default-log
set firewall ipv4 name wan-mgmt rule 999 action 'drop'
set firewall ipv4 name wan-mgmt rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-mgmt rule 999 state invalid
set firewall ipv4 name wan-mgmt rule 999 log

# From WAN to VIDEO
set firewall ipv4 name wan-video default-action 'drop'
set firewall ipv4 name wan-video description 'From WAN to VIDEO'
set firewall ipv4 name wan-video default-log
set firewall ipv4 name wan-video rule 999 action 'drop'
set firewall ipv4 name wan-video rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-video rule 999 state invalid
set firewall ipv4 name wan-video rule 999 log
