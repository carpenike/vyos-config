#!/bin/vbash

# Create interfaces for bond

set interfaces ethernet eth0 hw-id '00:01:c0:21:33:f2'
set interfaces ethernet eth1 hw-id '00:01:c0:20:71:00'
set interfaces ethernet eth2 hw-id '00:01:c0:21:33:f1'
set interfaces ethernet eth3 hw-id '00:01:c0:20:71:01'

# Create Bonded Interface

set interfaces bonding bond0 address '10.9.18.1/24'
set interfaces bonding bond0 description 'MGMT'
set interfaces bonding bond0 member interface eth0
set interfaces bonding bond0 member interface eth1
set interfaces bonding bond0 member interface eth2
set interfaces bonding bond0 member interface eth3

## Created VIFs on Bond
set interfaces bonding bond0 vif 5 address '10.5.0.1/16'
set interfaces bonding bond0 vif 5 description 'RESCUE'

set interfaces bonding bond0 vif 10 address '10.10.0.1/16'
set interfaces bonding bond0 vif 10 description 'WIRED'

set interfaces bonding bond0 vif 20 address '10.20.0.1/16'
set interfaces bonding bond0 vif 20 description 'SERVERS'

set interfaces bonding bond0 vif 30 address '10.30.0.1/16'
set interfaces bonding bond0 vif 30 description 'WIRELESS'

set interfaces bonding bond0 vif 35 address '10.35.0.1/16'
set interfaces bonding bond0 vif 35 description 'GUEST'

set interfaces bonding bond0 vif 40 address '10.40.0.1/16'
set interfaces bonding bond0 vif 40 description 'IOT'

set interfaces bonding bond0 vif 50 address '10.50.0.1/16'
set interfaces bonding bond0 vif 5 description 'VIDEO'

set interfaces bonding bond0 vif 4000 address 'dhcp'
set interfaces bonding bond0 vif 4000 address 'dhcpv6'
set interfaces bonding bond0 vif 4000 description 'WAN'
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0 sla-id 0
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0.10 sla-id 1
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0.20 sla-id 2
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 interface bond0.30 sla-id 3
set interfaces bonding bond0 vif 4000 dhcpv6-options pd 0 length 56
set interfaces bonding bond0 vif 4000 ipv6 address autoconf

set interfaces wireguard wg01 address '10.11.0.1/16'
set interfaces wireguard wg01 description 'WIREGUARD'
set interfaces wireguard wg01 peer rymac allowed-ips '10.11.0.2/32'
set interfaces wireguard wg01 peer rymac persistent-keepalive '15'
set interfaces wireguard wg01 peer rymac public-key '/8Kd5E9GpwwY+KdR5dhOZuR+TDqMcOgXAOm9k7p5zU0='
set interfaces wireguard wg01 peer iphone-ryan allowed-ips '10.11.0.3/32'
set interfaces wireguard wg01 peer iphone-ryan persistent-keepalive '15'
set interfaces wireguard wg01 peer iphone-ryan public-key 'boTBBrvrDJWSO2y6iTrqtvnLpOWwvySsUfPLKSOtbAs='
set interfaces wireguard wg01 port '51820'
set interfaces wireguard wg01 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
