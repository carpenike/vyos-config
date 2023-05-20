#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name
set service dhcp-server global-parameters 'option omada-address code 138 = ip-address;'
set service dhcp-server dynamic-dns-update
set service dhcp-server global-parameters "key ddnsupdate { algorithm hmac-md5; secret ${SECRET_DHCP_DDNS_UPDATE}; };"
set service dhcp-server global-parameters "zone holthome.net. { primary 10.6.0.3; key ddnsupdate; }"
set service dhcp-server global-parameters "ddns-domainname &quot;holthome.net.&quot;;"
set service dhcp-server global-parameters "ddns-rev-domainname &quot;in-addr.arpa.&quot;;"
set service dhcp-server global-parameters "zone in-addr.arpa. { primary 10.6.0.3; key ddnsupdate; }"
set service dhcp-server global-parameters "zone 10.in-addr.arpa. { primary 10.6.0.3; key ddnsupdate; }"
set service dhcp-server global-parameters "update-optimization false;"

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 10.35.0.0/16 default-router '10.35.0.1'
set service dhcp-server shared-network-name GUEST subnet 10.35.0.0/16 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 10.35.0.0/16 name-server '10.6.0.4'
set service dhcp-server shared-network-name GUEST subnet 10.35.0.0/16 range 0 start '10.35.0.200'
set service dhcp-server shared-network-name GUEST subnet 10.35.0.0/16 range 0 stop '10.35.0.254'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.40.0.0/16 default-router '10.40.0.1'
set service dhcp-server shared-network-name IOT subnet 10.40.0.0/16 domain-name 'holthome.net'
set service dhcp-server shared-network-name IOT subnet 10.40.0.0/16 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.40.0.0/16 name-server '10.6.0.4'
set service dhcp-server shared-network-name IOT subnet 10.40.0.0/16 range 0 start '10.40.0.200'
set service dhcp-server shared-network-name IOT subnet 10.40.0.0/16 range 0 stop '10.40.0.254'

# MGMT
set service dhcp-server shared-network-name MGMT authoritative
set service dhcp-server shared-network-name MGMT ping-check
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 subnet-parameters 'option omada-address 10.45.10.20;'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 default-router '10.9.18.1'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 lease '86400'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 name-server '10.6.0.4'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 range 0 start '10.9.18.200'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 range 0 stop '10.9.18.254'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-basement ip-address '10.9.18.108'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-basement mac-address 'c0:06:c3:aa:84:ea'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-garage ip-address '10.9.18.109'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-garage mac-address '00:31:92:8A:74:A6'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-patio ip-address '10.9.18.105'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-patio mac-address '00:31:92:8a:7e:ee'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-upstairs ip-address '10.9.18.107'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ap-upstairs mac-address 'c0:06:c3:aa:81:28'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping sw-0 ip-address '10.9.18.106'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping sw-0 mac-address 'c0:06:c3:c9:72:03'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ubnt-10gbswitch ip-address '10.9.18.102'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ubnt-10gbswitch mac-address 'b4:fb:e4:56:cf:8e'

set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ubnt-16poeswitch ip-address '10.9.18.103'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 static-mapping ubnt-16poeswitch mac-address 'b4:fb:e4:1c:a1:f6'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 default-router '10.20.0.1'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 domain-name 'holthome.net'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 name-server '10.6.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 range 0 start '10.20.0.200'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 range 0 stop '10.20.0.254'

set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping cp-0 ip-address '10.20.0.20'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping cp-0 mac-address '52:54:00:bf:00:c2'

set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-0 ip-address '10.20.10.20'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-0 mac-address '0c:c4:7a:8e:90:f4'

set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-1 ip-address '10.20.10.21'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-1 mac-address '0c:c4:7a:8f:9f:f2'

set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-2 ip-address '10.20.10.22'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-2 mac-address '0c:c4:7a:8f:3e:04'

set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-3 ip-address '10.20.10.23'
set service dhcp-server shared-network-name SERVERS subnet 10.20.0.0/16 static-mapping node-3 mac-address '0c:c4:7a:eb:21:fc'

# Video VLAN
set service dhcp-server shared-network-name VIDEO authoritative
set service dhcp-server shared-network-name VIDEO ping-check
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 default-router '10.50.0.1'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 domain-name 'holthome.net'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 lease '86400'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 name-server '10.6.0.4'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 range 0 start '10.50.0.200'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 range 0 stop '10.50.0.254'

set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping amcrest-frontdoor ip-address '10.50.50.101'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping amcrest-frontdoor mac-address '9c:8e:cd:30:99:4d'

set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping camera-backpatio ip-address '10.50.50.100'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping camera-backpatio mac-address '58:50:ed:2d:47:4b'

set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping camera-driveway ip-address '10.50.50.103'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping camera-driveway mac-address '58:50:ed:2d:46:bf'

set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping wyze-dogs ip-address '10.50.50.102'
set service dhcp-server shared-network-name VIDEO subnet 10.50.0.0/16 static-mapping wyze-dogs mac-address 'd0:3f:27:01:4a:0f'

# Wired VLAN
set service dhcp-server shared-network-name WIRED authoritative
set service dhcp-server shared-network-name WIRED ping-check
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 default-router '10.10.0.1'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 domain-name 'holthome.net'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 lease '86400'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 name-server '10.6.0.6'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 range 0 start '10.10.0.200'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 range 0 stop '10.10.0.254'

set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping Ryan-PC ip-address '10.10.0.198'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping Ryan-PC mac-address '52:54:00:f5:e6:19'

set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping flex ip-address '10.10.0.50'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping flex mac-address '00:1c:2d:05:22:80'

set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping rydesk ip-address '10.10.0.200'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping rydesk mac-address '8a:3c:36:ca:48:4e'

set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping fh ip-address '10.10.0.10'
set service dhcp-server shared-network-name WIRED subnet 10.10.0.0/16 static-mapping fh mac-address '52:54:00:27:a0:64'

# Wireless VLAN
set service dhcp-server shared-network-name WIRELESS authoritative
set service dhcp-server shared-network-name WIRELESS ping-check
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 default-router '10.30.0.1'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 domain-name 'holthome.net'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 lease '86400'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 name-server '10.6.0.6'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 range 0 start '10.30.0.200'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 range 0 stop '10.30.0.254'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Caydans-iPad ip-address '10.30.50.252'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Caydans-iPad mac-address '10:00:20:33:a3:84'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Ryans-iPad ip-address '10.30.50.200'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Ryans-iPad mac-address 'ac:00:7a:55:4b:07'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Ryans-iPhone ip-address '10.30.50.200'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Ryans-iPhone mac-address 'ac:00:7a:55:4b:07'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Stefanies-MBP ip-address '10.30.50.254'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Stefanies-MBP mac-address '5c:e9:1e:b0:89:f1'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Steffi-PC ip-address '10.30.50.251'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Steffi-PC mac-address '50:1a:c5:e9:75:af'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping StefaniesiPhone ip-address '10.30.50.201'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping StefaniesiPhone mac-address '88:b9:45:32:84:e4'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Taylors-iPad ip-address '10.30.50.255'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping Taylors-iPad mac-address '6c:7e:67:af:7d:46'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping rybook ip-address '10.30.50.250'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping rybook mac-address 'bc:83:85:cf:53:82'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping rymac ip-address '10.30.50.253'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping rymac mac-address 'bc:d0:74:22:c9:68'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping august-front-door ip-address '10.30.100.220'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping august-front-door mac-address '78:9c:85:0d:91:4d'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping august-patio-door ip-address '10.30.100.221'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping august-patio-door mac-address '78:9c:85:21:7c:01'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping basement-xbox ip-address '10.30.100.16'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping basement-xbox mac-address '4c:3b:df:db:0e:92'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping basement-tv-switch ip-address '10.30.100.215'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping basement-tv-switch mac-address '48:3f:da:2b:14:3b'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping ecobee ip-address '10.30.100.180'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping ecobee mac-address '44:61:32:f0:99:8b'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping energy-meter ip-address '10.30.100.200'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping energy-meter mac-address '3c:61:05:2a:e4:a0'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping espresense-office ip-address '10.30.100.240'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping espresense-office mac-address '94:b5:55:26:37:c4'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping firetv-bar-tv ip-address '10.30.100.15'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping firetv-bar-tv mac-address '74:ec:b2:5a:c3:47'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping flair ip-address '10.30.100.182'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping flair mac-address '48:3f:da:52:ec:3c'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping flair static-mapping-parameters "ddns-hostname flair;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping front-under-bar-lights ip-address '10.30.100.203'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping front-under-bar-lights mac-address '84:cc:a8:af:a2:ca'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping garage-door ip-address '10.30.100.208'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping garage-door mac-address 'e8:db:84:d4:cd:53'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping garage-front-lights ip-address '10.30.100.204'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping garage-front-lights mac-address '68:c6:3a:fb:70:ae'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping garage-side-lights ip-address '10.30.100.210'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping garage-side-lights mac-address '68:c6:3a:fb:3b:78'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping google-home-kitchen-display ip-address '10.30.100.114'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping google-home-kitchen-display mac-address 'a4:77:33:f2:65:38'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping google-home-mini-ryanoffice ip-address '10.30.100.112'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping google-home-mini-ryanoffice mac-address '30:fd:38:75:0f:a1'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hdhr ip-address '10.30.100.70'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hdhr mac-address '00:18:dd:04:cb:77'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hp-printer ip-address '10.30.100.5'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hp-printer mac-address 'f8:0d:ac:7b:d9:90'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hue-bridge ip-address '10.30.100.181'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hue-bridge mac-address 'ec:b5:fa:9c:5a:d3'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping hue-bridge static-mapping-parameters "ddns-hostname hue-bridge;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lg-basement-tv ip-address '10.30.100.170'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lg-basement-tv mac-address '20:3d:bd:6b:24:d2'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lg-basement-tv static-mapping-parameters "ddns-hostname lg-basement-tv;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lg-master-bedroom-tv ip-address '10.30.100.171'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lg-master-bedroom-tv mac-address 'ac:f1:08:59:b5:46'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lg-master-bedroom-tv static-mapping-parameters "ddns-hostname lg-master-bedroom-tv;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-1 ip-address '10.30.100.190'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-1 mac-address 'd0:73:d5:20:16:2a'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-1 static-mapping-parameters "ddns-hostname lifx-bar-ceiling-1;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-2 ip-address '10.30.100.191'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-2 mac-address 'd0:73:d5:20:18:7d'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-2 static-mapping-parameters "ddns-hostname lifx-bar-ceiling-2;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-3 ip-address '10.30.100.192'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-3 mac-address 'd0:73:d5:20:24:d5'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-bar-ceiling-3 static-mapping-parameters "ddns-hostname lifx-bar-ceiling-3;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-mb-ryan ip-address '10.30.100.195'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-mb-ryan mac-address 'd0:73:d5:11:55:05'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-mb-ryan static-mapping-parameters "ddns-hostname lifx-mb-ryan;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-mb-steffi ip-address '10.30.100.196'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-mb-steffi mac-address 'd0:73:d5:11:59:1c'
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping lifx-mb-steffi static-mapping-parameters "ddns-hostname lifx-mb-steffi;"

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping master-bathroom-counter-light ip-address '10.30.100.207'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping master-bathroom-counter-light mac-address 'e8:68:e7:f0:45:cd'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping master-bedroom-tv-light ip-address '10.30.100.197'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping master-bedroom-tv-light mac-address '9c:04:a0:71:66:26'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping miele-dishwasher static-mapping-parameters "ddns-hostname miele-dishwasher;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping miele-dishwasher mac-address '00:1d:63:27:64:45'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nintendo-switch-1 ip-address '10.30.100.10'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nintendo-switch-1 mac-address '58:2f:40:7c:25:19'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nintendo-switch-2 ip-address '10.30.100.11'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nintendo-switch-2 mac-address '48:a5:e7:79:07:ef'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nvidia-shield-tv-basement ip-address '10.30.100.13'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nvidia-shield-tv-basement mac-address '48:b0:2d:13:b7:a0'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nvidia-shield-tv-livingroom ip-address '10.30.100.12'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nvidia-shield-tv-livingroom mac-address '00:04:4b:83:12:01'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nvidia-shield-tv-master-bedroom ip-address '10.30.100.14'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping nvidia-shield-tv-master-bedroom mac-address '48:b0:2d:13:d1:d6'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping openspot4 ip-address '10.30.100.245'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping openspot4 mac-address '7c:df:a1:e6:d5:ac'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping patio-door-lights ip-address '10.30.100.205'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping patio-door-lights mac-address '68:c6:3a:fb:42:b6'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping porch-ceiling-lights ip-address '10.30.100.209'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping porch-ceiling-lights mac-address '68:c6:3a:fb:67:e3'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-bar static-mapping-parameters "ddns-hostname sonos-bar;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-bar mac-address '48:a6:b8:f9:11:b6'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-basement static-mapping-parameters "ddns-hostname sonos-basement;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-basement mac-address '5c:aa:fd:4e:d6:24'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-move static-mapping-parameters "ddns-hostname sonos-move;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-move mac-address '48:a6:b8:e0:cd:ec'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-office static-mapping-parameters "ddns-hostname sonos-office;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-office mac-address '48:a6:b8:68:81:b5'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-kitchen static-mapping-parameters "ddns-hostname sonos-kitchen;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-kitchen mac-address '34:7e:5c:1e:04:82'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-livingroom-tv static-mapping-parameters "ddns-hostname sonos-livingroom-tv;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-livingroom-tv mac-address '54:2a:1b:87:58:10'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-master-bedroom-tv static-mapping-parameters "ddns-hostname sonos-bedroom-tv;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-master-bedroom-tv mac-address '48:a6:b8:b3:9f:e7'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-upstairs-hallway static-mapping-parameters "ddns-hostname sonos-upstairs-hallway;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-upstairs-hallway mac-address '5c:aa:fd:4e:d2:9e'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-livingroom static-mapping-parameters "ddns-hostname sonos-livingroom;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sonos-livingroom mac-address '34:7e:5c:1e:04:4c'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sunroom-corner-lights ip-address '10.30.100.202'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sunroom-corner-lights mac-address 'e8:68:e7:f1:5a:c3'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sunroom-window-lights ip-address '10.30.100.211'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping sunroom-window-lights mac-address '3c:61:05:eb:e0:29'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping upstairs-caydan-switch-lights ip-address '10.30.100.212'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping upstairs-caydan-switch-lights mac-address '8c:aa:b5:5f:97:26'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping upstairs-jayme-switch-lights ip-address '10.30.100.214'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping upstairs-jayme-switch-lights mac-address 'e8:db:84:d2:2b:fb'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping upstairs-taylor-switch-lights ip-address '10.30.100.213'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping upstairs-taylor-switch-lights mac-address 'e8:db:84:d2:e0:67'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping utility-room-sensors ip-address '10.30.100.201'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping utility-room-sensors mac-address '7c:9e:bd:f5:2e:b0'

# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping well-switch ip-address '10.30.100.206'
# set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping well-switch mac-address 'dc:4f:22:4c:98:98'

set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping zigbee-controller static-mapping-parameters "ddns-hostname zigbee-controller;"
set service dhcp-server shared-network-name WIRELESS subnet 10.30.0.0/16 static-mapping zigbee-controller mac-address '94:b9:7e:6b:bb:d3'
