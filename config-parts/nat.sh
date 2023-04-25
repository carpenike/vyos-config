#!/bin/vbash

# Forward HTTP(S) to ingress
set nat destination rule 100 description 'HTTPS'
set nat destination rule 100 destination port '443'
set nat destination rule 100 inbound-interface 'bond0.4000'
set nat destination rule 100 protocol 'tcp'
set nat destination rule 100 translation address '10.45.10.10'
set nat destination rule 100 translation port '443'

set nat destination rule 101 description 'HTTP'
set nat destination rule 101 destination port '80'
set nat destination rule 101 inbound-interface 'bond0.4000'
set nat destination rule 101 protocol 'tcp'
set nat destination rule 101 translation address '10.45.10.10'
set nat destination rule 101 translation port '80'

# Forward Plex

set nat destination rule 102 description 'Plex'
set nat destination rule 102 destination port '32400'
set nat destination rule 102 inbound-interface 'bond0.4000'
set nat destination rule 102 protocol 'tcp'
set nat destination rule 102 translation address '10.45.100.100'
set nat destination rule 102 translation port '80'

# Force DNS
set nat destination rule 103 description 'Force DNS for IoT'
set nat destination rule 103 destination address '!10.6.0.6'
set nat destination rule 103 destination port '53'
set nat destination rule 103 inbound-interface 'bond0.40'
set nat destination rule 103 protocol 'tcp_udp'
set nat destination rule 103 translation address '10.6.0.6'
set nat destination rule 103 translation port '53'

set nat destination rule 104 description 'Force DNS for Video'
set nat destination rule 104 destination address '!10.6.0.6'
set nat destination rule 104 destination port '53'
set nat destination rule 104 inbound-interface 'bond0.50'
set nat destination rule 104 protocol 'tcp_udp'
set nat destination rule 104 translation address '10.6.0.6'
set nat destination rule 104 translation port '53'

# Force NTP
set nat destination rule 105 description 'Force NTP for LAN'
set nat destination rule 105 destination address '!10.10.0.1'
set nat destination rule 105 destination port '123'
set nat destination rule 105 inbound-interface 'bond0.10'
set nat destination rule 105 protocol 'udp'
set nat destination rule 105 translation address '10.10.0.1'
set nat destination rule 105 translation port '123'

# set nat destination rule 106 description 'Force NTP for Servers'
# set nat destination rule 106 destination address '!10.20.0.1'
# set nat destination rule 106 destination port '123'
# set nat destination rule 106 inbound-interface 'bond0.20'
# set nat destination rule 106 protocol 'udp'
# set nat destination rule 106 translation address '10.20.0.1'
# set nat destination rule 106 translation port '123'

set nat destination rule 107 description 'Force NTP for IoT'
set nat destination rule 107 destination address '!10.40.0.1'
set nat destination rule 107 destination port '123'
set nat destination rule 107 inbound-interface 'bond0.40'
set nat destination rule 107 protocol 'udp'
set nat destination rule 107 translation address '10.40.0.1'
set nat destination rule 107 translation port '123'

set nat destination rule 108 description 'Force NTP for Video'
set nat destination rule 108 destination address '!10.50.0.1'
set nat destination rule 108 destination port '123'
set nat destination rule 108 inbound-interface 'bond0.50'
set nat destination rule 108 protocol 'udp'
set nat destination rule 108 translation address '10.50.0.1'
set nat destination rule 108 translation port '123'

set nat destination rule 109 description 'Force NTP for Wireguard Trusted'
set nat destination rule 109 destination address '!10.11.0.1'
set nat destination rule 109 destination port '123'
set nat destination rule 109 inbound-interface 'wg01'
set nat destination rule 109 protocol 'udp'
set nat destination rule 109 translation address '10.11.0.1'
set nat destination rule 109 translation port '123'

# Forward XBox Ports
# set nat destination rule 110 description 'Forward UDP Xbox Ports to Xbox (88)'
# set nat destination rule 110 destination port '88'
# set nat destination rule 110 inbound-interface 'bond0.4000'
# set nat destination rule 110 protocol 'udp'
# set nat destination rule 110 translation address '10.40.50.16'
# set nat destination rule 110 translation port '88'

# set nat destination rule 111 description 'Forward UDP Xbox Ports to Xbox (500)'
# set nat destination rule 111 destination port '500'
# set nat destination rule 111 inbound-interface 'bond0.4000'
# set nat destination rule 111 protocol 'udp'
# set nat destination rule 111 translation address '10.40.50.16'
# set nat destination rule 111 translation port '500'

# set nat destination rule 112 description 'Forward UDP Xbox Ports to Xbox (3074)'
# set nat destination rule 112 destination port '3074'
# set nat destination rule 112 inbound-interface 'bond0.4000'
# set nat destination rule 112 protocol 'udp'
# set nat destination rule 112 translation address '10.40.50.16'
# set nat destination rule 112 translation port '3074'

# set nat destination rule 113 description 'Forward UDP Xbox Ports to Xbox (3544)'
# set nat destination rule 113 destination port '3544'
# set nat destination rule 113 inbound-interface 'bond0.4000'
# set nat destination rule 113 protocol 'udp'
# set nat destination rule 113 translation address '10.40.50.16'
# set nat destination rule 113 translation port '3544'

# set nat destination rule 114 description 'Forward UDP Xbox Ports to Xbox (4500)'
# set nat destination rule 114 destination port '4500'
# set nat destination rule 114 inbound-interface 'bond0.4000'
# set nat destination rule 114 protocol 'udp'
# set nat destination rule 114 translation address '10.40.50.16'
# set nat destination rule 114 translation port '4500'

set nat destination rule 114 description 'Forward UDP Xbox Ports to Xbox'
set nat destination rule 114 destination port '88,500,3074,3544,4500'
set nat destination rule 114 inbound-interface 'bond0.4000'
set nat destination rule 114 protocol 'udp'
set nat destination rule 114 translation address '10.40.50.16'

set nat destination rule 115 description 'Forward TCP Xbox Ports to Xbox'
set nat destination rule 115 destination port '3074'
set nat destination rule 115 inbound-interface 'bond0.4000'
set nat destination rule 115 protocol 'tcp'
set nat destination rule 115 translation address '10.40.50.16'
set nat destination rule 115 translation port '3074'

set nat destination rule 116 description 'Forward UDP Ports for FusionHub'
set nat destination rule 116 destination port '4501'
set nat destination rule 116 inbound-interface 'bond0.4000'
set nat destination rule 116 protocol 'udp'
set nat destination rule 116 translation address '10.10.0.10'
set nat destination rule 116 translation port '4501'

set nat destination rule 117 description 'Forward TCP Ports for FusionHub'
set nat destination rule 117 destination port '5312,32015'
set nat destination rule 117 inbound-interface 'bond0.4000'
set nat destination rule 117 protocol 'tcp'
set nat destination rule 117 translation address '10.10.0.10'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface 'bond0.4000'
set nat source rule 100 translation address 'masquerade'
