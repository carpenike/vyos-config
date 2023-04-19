#!/bin/vbash

# BGP configuration
set protocols bgp neighbor 10.20.0.20 address-family ipv4-unicast
set protocols bgp neighbor 10.20.0.20 description 'cp-0'
set protocols bgp neighbor 10.20.1.20 remote-as '64512'
set protocols bgp neighbor 10.20.0.21 address-family ipv4-unicast
set protocols bgp neighbor 10.20.0.21 description 'node-0'
set protocols bgp neighbor 10.20.1.21 remote-as '64512'
set protocols bgp neighbor 10.20.0.22 address-family ipv4-unicast
set protocols bgp neighbor 10.20.0.22 description 'node-1'
set protocols bgp neighbor 10.20.1.22 remote-as '64512'
set protocols bgp neighbor 10.20.0.23 address-family ipv4-unicast
set protocols bgp neighbor 10.20.0.23 description 'node-2'
set protocols bgp neighbor 10.20.1.23 remote-as '64512'
set protocols bgp neighbor 10.20.0.24 address-family ipv4-unicast
set protocols bgp neighbor 10.20.0.24 description 'node-3'
set protocols bgp neighbor 10.20.1.24 remote-as '64512'
set protocols bgp parameters router-id '10.20.0.1'
set protocols bgp system-as '64512'
