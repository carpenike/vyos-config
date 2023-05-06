#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'


# Network groups
## Cloudflare
set firewall group network-group cloudflare-ipv4 network '173.245.48.0/20'
set firewall group network-group cloudflare-ipv4 network '103.21.244.0/22'
set firewall group network-group cloudflare-ipv4 network '103.22.200.0/22'
set firewall group network-group cloudflare-ipv4 network '103.31.4.0/22'
set firewall group network-group cloudflare-ipv4 network '141.101.64.0/18'
set firewall group network-group cloudflare-ipv4 network '108.162.192.0/18'
set firewall group network-group cloudflare-ipv4 network '190.93.240.0/20'
set firewall group network-group cloudflare-ipv4 network '188.114.96.0/20'
set firewall group network-group cloudflare-ipv4 network '197.234.240.0/22'
set firewall group network-group cloudflare-ipv4 network '198.41.128.0/17'
set firewall group network-group cloudflare-ipv4 network '162.158.0.0/15'
set firewall group network-group cloudflare-ipv4 network '104.16.0.0/13'
set firewall group network-group cloudflare-ipv4 network '104.24.0.0/14'
set firewall group network-group cloudflare-ipv4 network '172.64.0.0/13'
set firewall group network-group cloudflare-ipv4 network '131.0.72.0/22'

## k8s
set firewall group network-group k8s_services network '10.45.0.0/16'

# Port groups
set firewall group port-group wireguard port '51820'
