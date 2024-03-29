#!/bin/vbash

# Force DNS
# set nat destination rule 103 description 'Force DNS for IoT'
# set nat destination rule 103 destination address '!10.6.0.4'
# set nat destination rule 103 destination port '53'
# set nat destination rule 103 inbound-interface name 'bond0.40'
# set nat destination rule 103 protocol 'tcp_udp'
# set nat destination rule 103 translation address '10.6.0.4'
# set nat destination rule 103 translation port '53'

set nat destination rule 104 description 'Force DNS for Video'
set nat destination rule 104 destination address '!10.6.0.4'
set nat destination rule 104 destination port '53'
set nat destination rule 104 inbound-interface name 'bond0.50'
set nat destination rule 104 protocol 'tcp_udp'
set nat destination rule 104 translation address '10.6.0.4'
set nat destination rule 104 translation port '53'

set nat destination rule 105 description 'Force DNS for Wireless'
set nat destination rule 105 destination address '!10.6.0.6'
set nat destination rule 105 destination port '53'
set nat destination rule 105 inbound-interface name 'bond0.30'
set nat destination rule 105 protocol 'tcp_udp'
set nat destination rule 105 translation address '10.6.0.6'
set nat destination rule 105 translation port '53'

# Force NTP
set nat destination rule 106 description 'Force NTP for LAN'
set nat destination rule 106 destination address '!10.10.0.1'
set nat destination rule 106 destination port '123'
set nat destination rule 106 inbound-interface name 'bond0.10'
set nat destination rule 106 protocol 'udp'
set nat destination rule 106 translation address '10.10.0.1'
set nat destination rule 106 translation port '123'

set nat destination rule 107 description 'Force NTP for Servers'
set nat destination rule 107 destination address '!10.20.0.1'
set nat destination rule 107 destination port '123'
set nat destination rule 107 inbound-interface name 'bond0.20'
set nat destination rule 107 protocol 'udp'
set nat destination rule 107 translation address '10.20.0.1'
set nat destination rule 107 translation port '123'

# set nat destination rule 108 description 'Force NTP for IoT'
# set nat destination rule 108 destination address '!10.40.0.1'
# set nat destination rule 108 destination port '123'
# set nat destination rule 108 inbound-interface name 'bond0.40'
# set nat destination rule 108 protocol 'udp'
# set nat destination rule 108 translation address '10.40.0.1'
# set nat destination rule 108 translation port '123'

set nat destination rule 109 description 'Force NTP for Video'
set nat destination rule 109 destination address '!10.50.0.1'
set nat destination rule 109 destination port '123'
set nat destination rule 109 inbound-interface name 'bond0.50'
set nat destination rule 109 protocol 'udp'
set nat destination rule 109 translation address '10.50.0.1'
set nat destination rule 109 translation port '123'

set nat destination rule 110 description 'Force NTP for Wireguard Trusted'
set nat destination rule 110 destination address '!10.11.0.1'
set nat destination rule 110 destination port '123'
set nat destination rule 110 inbound-interface name 'wg01'
set nat destination rule 110 protocol 'udp'
set nat destination rule 110 translation address '10.11.0.1'
set nat destination rule 110 translation port '123'

# Forward XBox Ports
set nat destination rule 114 description 'Forward UDP Xbox Ports to Xbox'
set nat destination rule 114 destination port '88,500,3074,3544,4500'
set nat destination rule 114 inbound-interface name 'bond0.4000'
set nat destination rule 114 protocol 'udp'
set nat destination rule 114 translation address '10.30.100.16'

set nat destination rule 115 description 'Forward TCP Xbox Ports to Xbox'
set nat destination rule 115 destination port '3074'
set nat destination rule 115 inbound-interface name 'bond0.4000'
set nat destination rule 115 protocol 'tcp'
set nat destination rule 115 translation address '10.30.100.16'
set nat destination rule 115 translation port '3074'

# Forward FusionHub Ports
set nat destination rule 116 description 'Forward UDP Ports for FusionHub'
set nat destination rule 116 destination port '4501'
set nat destination rule 116 inbound-interface name 'bond0.4000'
set nat destination rule 116 protocol 'udp'
set nat destination rule 116 translation address '10.20.0.5'
set nat destination rule 116 translation port '4501'

set nat destination rule 117 description 'Forward TCP Ports for FusionHub'
set nat destination rule 117 destination port '5312,32015'
set nat destination rule 117 inbound-interface name 'bond0.4000'
set nat destination rule 117 protocol 'tcp'
set nat destination rule 117 translation address '10.20.0.5'

# Forward QB Ports
set nat destination rule 118 description 'Forward Ports for QB'
set nat destination rule 118 destination port '61144'
set nat destination rule 118 inbound-interface name 'bond0.4000'
set nat destination rule 118 protocol 'tcp_udp'
set nat destination rule 118 translation address '10.45.10.19'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface name 'bond0.4000'
set nat source rule 100 translation address 'masquerade'
