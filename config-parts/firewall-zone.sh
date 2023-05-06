#!/bin/vbash

# Local
set firewall zone local default-action 'drop'
set firewall zone local description 'Local router zone'
# set firewall zone local from guest firewall name 'guest-local'
# set firewall zone local from iot firewall name 'iot-local'
# set firewall zone local from lan firewall name 'lan-local'
# set firewall zone local from servers firewall name 'servers-local'
# set firewall zone local from services firewall name 'services-local'
# set firewall zone local from trusted firewall name 'trusted-local'
# set firewall zone local from video firewall name 'video-local'
set firewall zone local from wan firewall name 'wan-local'
set firewall zone local from wan firewall ipv6-name 'wan-local'
set firewall zone local local-zone

# WAN
# set firewall zone wan from guest firewall name 'guest-wan'
# set firewall zone wan from iot firewall name 'iot-wan'
# set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
# set firewall zone wan from servers firewall name 'servers-wan'
# set firewall zone wan from services firewall name 'services-wan'
set firewall zone wan from trusted firewall name 'wireless-wan'
# set firewall zone wan from video firewall name 'video-wan'
set firewall zone wan interface 'bond0.4000'

# WIRELESS
set firewall zone trusted default-action 'drop'
# set firewall zone trusted from guest firewall name 'guest-trusted'
# set firewall zone trusted from iot firewall name 'iot-trusted'
# set firewall zone trusted from lan firewall name 'lan-trusted'
set firewall zone trusted from local firewall name 'local-wireless'
# set firewall zone trusted from servers firewall name 'servers-trusted'
# set firewall zone trusted from services firewall name 'services-trusted'
# set firewall zone trusted from video firewall name 'video-trusted'
set firewall zone trusted from wan firewall name 'wan-wireless'
set firewall zone trusted interface 'bond0.30'