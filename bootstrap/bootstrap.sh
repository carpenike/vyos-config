#!/bin/bash

load /opt/vyatta/etc/config.boot.default

# Setup bonding interface and mgmt network address
set interfaces bonding bond0 address '10.9.18.1/24'
set interfaces bonding bond0 description 'MGMT'
set interfaces bonding bond0 member interface eth0
set interfaces bonding bond0 member interface eth1
set interfaces bonding bond0 member interface eth2
set interfaces bonding bond0 member interface eth3

# Setup VLANs on bond0 interface
set interfaces bonding bond0 vif 5 description 'Failsafe'
set interfaces bonding bond0 vif 5 address '10.5.0.1/16'

set interfaces bonding bond0 vif 10 description 'WIRED'
set interfaces bonding bond0 vif 10 address '10.10.0.1/16'

set interfaces bonding bond0 vif 20 description 'SERVERS'
set interfaces bonding bond0 vif 20 address '10.20.0.1/16'

set interfaces bonding bond0 vif 30 description 'WIRELESS'
set interfaces bonding bond0 vif 30 address '10.30.0.1/16'

set interfaces bonding bond0 vif 35 description 'GUEST'
set interfaces bonding bond0 vif 35 address '10.35.0.1/16'

set interfaces bonding bond0 vif 40 description 'IOT'
set interfaces bonding bond0 vif 40 address '10.40.0.1/16'

set interfaces bonding bond0 vif 50 description 'VIDEO'
set interfaces bonding bond0 vif 50 address '10.50.0.1/16'

# Setup WAN vif on bond0 interface

set interfaces bonding bond0 vif 4000 address 'dhcp'
set interfaces bonding bond0 vif 4000 address 'dhcpv6'
set interfaces bonding bond0 vif 4000 description 'WAN'
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 prefix-length '56'
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0 sla-id 0
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0.10 sla-id 1
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0.20 sla-id 2
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0.30 sla-id 3
set interfaces bonding bond0 vif 4000 ipv6 address 'autoconf'

# Setup authentication
set system login user vyos authentication public-keys personal key 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBOslNYCKlAhgO9vxUVt4Vq0diz35JD0f6Vtdh2zfZwyb+SI/TPC+U06TPsxS++KN+HHkQvNBcqpQ6a8qNsYsVJA='
set system login user vyos authentication public-keys personal type 'ecdsa-sha2-nistp256 '

set service ssh disable-password-authentication
set service ssh port '22'

# Setup system parameters
delete system host-name
set system host-name 'fw'
set system domain-name 'holthome.net'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system time-zone 'America/New_York'

# Setup dhcp-server on untagged (mgmt) network
set service dhcp-server shared-network-name MGMT authoritative
set service dhcp-server shared-network-name MGMT ping-check
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 default-router '10.9.18.1'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 lease '86400'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 name-server '1.1.1.1'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 range 0 start '10.9.18.200'
set service dhcp-server shared-network-name MGMT subnet 10.9.18.0/24 range 0 stop '10.9.18.254'

# Setup outbound masquerade rule for all internal traffic
# ALL -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 outbound-interface 'bond0.4000'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 translation address 'masquerade'
