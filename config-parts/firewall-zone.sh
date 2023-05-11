# #!/bin/vbash

# # Local
# set firewall zone local default-action 'drop'
# set firewall zone local description 'Local router zone'
# # set firewall zone local from guest firewall name 'guest-local'
# # set firewall zone local from iot firewall name 'iot-local'
# # set firewall zone local from lan firewall name 'lan-local'
# # set firewall zone local from servers firewall name 'servers-local'
# set firewall zone local from services firewall name 'services-local'
# set firewall zone local from wireless firewall name 'wireless-local'
# # set firewall zone local from video firewall name 'video-local'
# set firewall zone local from wan firewall name 'wan-local'
# set firewall zone local from wan firewall ipv6-name 'wan-local'
# set firewall zone local local-zone

# # WAN
# # set firewall zone wan from guest firewall name 'guest-wan'
# # set firewall zone wan from iot firewall name 'iot-wan'
# # set firewall zone wan from lan firewall name 'lan-wan'
# set firewall zone wan from local firewall name 'local-wan'
# set firewall zone wan from servers firewall name 'servers-wan'
# set firewall zone wan from services firewall name 'services-wan'
# set firewall zone wan from wireless firewall name 'wireless-wan'
# # set firewall zone wan from video firewall name 'video-wan'
# set firewall zone wan interface 'bond0.4000'

# # WIRELESS
# set firewall zone wireless default-action 'drop'
# # set firewall zone wireless from guest firewall name 'guest-wireless'
# # set firewall zone wireless from iot firewall name 'iot-wireless'
# # set firewall zone wireless from lan firewall name 'lan-wireless'
# set firewall zone wireless from local firewall name 'local-wireless'
# set firewall zone wireless from servers firewall name 'servers-wireless'
# set firewall zone wireless from services firewall name 'services-wireless'
# # set firewall zone wireless from video firewall name 'video-wireless'
# set firewall zone wireless from wan firewall name 'wan-wireless'
# set firewall zone wireless interface 'bond0.30'

# # SERVICES
# set firewall zone services default-action 'drop'
# set firewall zone services description 'VyOS services zone'
# # set firewall zone services from guest firewall name 'guest-services'
# # set firewall zone services from iot firewall name 'iot-services'
# # set firewall zone services from lan firewall name 'lan-services'
# set firewall zone services from local firewall name 'local-services'
# # set firewall zone services from servers firewall name 'servers-services'
# set firewall zone services from wireless firewall name 'wireless-services'
# # set firewall zone services from video firewall name 'video-services'
# set firewall zone services from wan firewall name 'wan-services'
# set firewall zone services interface 'cni-services'

# # SERVERS
# set firewall zone servers default-action 'drop'
# # set firewall zone servers from guest firewall name 'guest-servers'
# # set firewall zone servers from iot firewall name 'iot-servers'
# # set firewall zone servers from lan firewall name 'lan-servers'
# set firewall zone servers from local firewall name 'local-servers'
# set firewall zone servers from services firewall name 'services-servers'
# set firewall zone servers from wireless firewall name 'wireless-servers'
# # set firewall zone servers from video firewall name 'video-servers'
# set firewall zone servers from wan firewall name 'wan-servers'
# set firewall zone servers interface 'bond0.20'
