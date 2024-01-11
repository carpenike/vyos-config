#!/bin/vbash

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping enable
set firewall global-options broadcast-ping disable

# Router (VyOS itself)
set firewall group address-group router-addresses address 10.9.18.1
set firewall group address-group router-addresses address 10.5.0.1
set firewall group address-group router-addresses address 10.10.0.1
set firewall group address-group router-addresses address 10.20.0.1
set firewall group address-group router-addresses address 10.30.0.1
set firewall group address-group router-addresses address 10.35.0.1
# set firewall group address-group router-addresses address 10.40.0.1
set firewall group address-group router-addresses address 10.50.0.1
set firewall group address-group router-addresses address 127.0.0.1
# set firewall group ipv6-address-group router-addresses-ipv6 address
set firewall group ipv6-address-group router-addresses-ipv6 address ::1

# k8s nodes
set firewall group address-group k8s_nodes address '10.20.0.20'
set firewall group address-group k8s_nodes address '10.20.10.20-10.20.10.23'

# k8s ingress client devices

# k8s cluster services
set firewall group address-group k8s_api address '10.6.0.2'
set firewall group address-group k8s_hass address '10.30.10.15'
set firewall group address-group k8s_ingress address '10.45.10.9'
set firewall group address-group k8s_ingress address '10.45.10.10'
set firewall group address-group k8s_mqtt address '10.45.10.11'
# set firewall group address-group k8s_plex address '10.45.10.100'
set firewall group address-group k8s_vector_aggregator address '10.45.10.16'

# MQTT client devices
set firewall group address-group mqtt_clients address '10.30.50.200' # Ryan's iPhone
set firewall group address-group mqtt_clients address '10.30.50.253' # Ryan's MBP

# Plex client devices
set firewall group address-group plex_clients address '10.30.50.200' # Ryan's iPhone
set firewall group address-group plex_clients address '10.30.50.253' # Ryan's MBP

# Printers
set firewall group address-group printers address '10.30.100.5' # HP Color LaserJet Pro MFP M479fdw

# 3d printers
# set firewall group address-group 3d_printers address '10.30.100.5' # Octopi

# Printer client machines
set firewall group address-group printer_allowed address '10.30.50.200' # Ryan's iPhone
set firewall group address-group printer_allowed address '10.30.50.253' # Ryan's MBP

# Sonos controllers
set firewall group port-group sonos-controller-discovery port '1900'

set firewall group address-group sonos_controllers address '10.30.100.50' # Sonos Bar
set firewall group address-group sonos_controllers address '10.30.100.51' # Sonos Basement
set firewall group address-group sonos_controllers address '10.30.100.52' # Sonos Move
set firewall group address-group sonos_controllers address '10.30.100.53' # Sonos Office
set firewall group address-group sonos_controllers address '10.30.100.54' # Sonos Kitchen
set firewall group address-group sonos_controllers address '10.30.100.55' # Sonos LivingRoom TV
set firewall group address-group sonos_controllers address '10.30.100.56' # Sonos Bedroom TV
set firewall group address-group sonos_controllers address '10.30.100.57' # Sonos Upstairs Hallway
set firewall group address-group sonos_controllers address '10.30.100.58' # Sonos Living Room Surround 1
set firewall group address-group sonos_controllers address '10.30.100.59' # Sonos Jayme's Roam
set firewall group address-group sonos_controllers address '10.30.100.60' # Sonos Taylor's Roam
set firewall group address-group sonos_controllers address '10.30.100.61' # Sonos Caydan's Roam

# Sonos players
set firewall group port-group sonos-player-discovery port '1900'
set firewall group address-group sonos_players address '10.30.50.200-10.30.50.260'

# Unifi devices
set firewall group address-group unifi_devices address '10.9.18.103-10.9.18.104' # Switches

# TP-Link Devices
set firewall group address-group tplink_devices address '10.9.18.110-10.9.18.115' # APs


# Vyos containers addresses
set firewall group address-group vyos_bind address '10.6.0.3'
set firewall group address-group vyos_dnsdist address '10.6.0.4'
set firewall group address-group vyos_unifi address '10.5.0.10'

# Storage devices
set firewall group address-group nas address '10.20.0.10'
set firewall group address-group nas address '10.20.0.11'

# Port groups
set firewall group port-group wireguard port '51820'

# # Domain Groups
# set firewall group domain-group verizon_wifi_calling address Ryans-iPhone.holthome.net
# set firewall group domain-group verizon_wifi_calling address StefaniesiPhone.holthome.net

# set firewall group domain-group amcrest_clients address Ryans-iPhone.holthome.net
# set firewall group domain-group amcrest_clients address StefaniesiPhone.holthome.net

# set firewall group domain-group flex_clients address Ryans-iPhone.holthome.net

# set firewall group domain-group plex_clients address Ryans-iPhone.holthome.net
# set firewall group domain-group plex_clients address StefaniesiPhone.holthome.net

# set firewall group domain-group k8s_nodes address cp-0.holthome.net
# set firewall group domain-group k8s_nodes address node-0.holthome.net
# set firewall group domain-group k8s_nodes address node-1.holthome.net
# set firewall group domain-group k8s_nodes address node-2.holthome.net
# set firewall group domain-group k8s_nodes address node-3.holthome.net

# set firewall group domain-group nas_nodes address nas-0.holthome.net
# set firewall group domain-group nas-nodes address nas-1.holthome.net

# set firewall group domain-group smb_clients address Ryans-iPhone.holthome.net
# set firewall group domain-group smb_clients address StefaniesiPhone.holthome.net

# set firewall group domain-group homekit_clients address Ryans-iPhone.holthome.net
# set firewall group domain-group homekit_clients address StefaniesiPhone.holthome.net

# set firewall group domain-group nfs_clients address Ryans-iPhone.holthome.net
# set firewall group domain-group nfs_clients address StefaniesiPhone.holthome.net
