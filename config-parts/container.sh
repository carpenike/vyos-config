#!/bin/vbash

# Container networks
set container network containers prefix '10.6.0.0/16'

# adguard-home
set container name adguard-home image 'docker.io/adguard/adguardhome:v0.107.38'
set container name adguard-home memory '0'
set container name adguard-home network containers address '10.6.0.6'
set container name adguard-home restart 'on-failure'
set container name adguard-home shared-memory '0'
set container name adguard-home volume config destination '/opt/adguardhome/conf'
set container name adguard-home volume config source '/config/adguard-home/conf'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value 'ipv4.holthome.net'
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value 'America/New_York'
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.9.4'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network containers address '10.6.0.3'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'America/New_York'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.0'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist memory '0'
set container name dnsdist network containers address '10.6.0.4'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# haproxy-k8s-api
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.8.2'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api network containers address '10.6.0.2'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config source '/config/containers/haproxy/config/haproxy.cfg'
set container name haproxy-k8s-api volume config mode 'ro'

# node-exporter
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.6.1'
set container name node-exporter memory '0'
set container name node-exporter allow-host-networks
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'

# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.4'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter allow-host-networks
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'

# udp-broadcast-relay-mdns
set container name udp-broadcast-relay-mdns allow-host-networks
set container name udp-broadcast-relay-mdns cap-add 'net-raw'
set container name udp-broadcast-relay-mdns environment CFG_DEV value 'bond0.20;bond0.40'
set container name udp-broadcast-relay-mdns environment CFG_ID value '2'
set container name udp-broadcast-relay-mdns environment CFG_MULTICAST value '224.0.0.251'
set container name udp-broadcast-relay-mdns environment CFG_PORT value '5353'
set container name udp-broadcast-relay-mdns environment SEPARATOR value ';'
set container name udp-broadcast-relay-mdns image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-mdns memory '0'
set container name udp-broadcast-relay-mdns restart 'on-failure'
set container name udp-broadcast-relay-mdns shared-memory '0'

# udp-broadcast-relay-sonos
set container name udp-broadcast-relay-sonos allow-host-networks
set container name udp-broadcast-relay-sonos cap-add 'net-raw'
set container name udp-broadcast-relay-sonos environment CFG_DEV value 'bond0.20;bond0.40'
set container name udp-broadcast-relay-sonos environment CFG_ID value '1'
set container name udp-broadcast-relay-sonos environment CFG_MULTICAST value '239.255.255.250'
set container name udp-broadcast-relay-sonos environment CFG_PORT value '1900'
set container name udp-broadcast-relay-sonos environment SEPARATOR value ';'
set container name udp-broadcast-relay-sonos image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-sonos memory '0'
set container name udp-broadcast-relay-sonos restart 'on-failure'
set container name udp-broadcast-relay-sonos shared-memory '0'

# onepassword-connect
set container name onepassword-connect image 'docker.io/1password/connect-api:1.7.1'
set container name onepassword-connect environment TZ value 'America/New_York'
set container name onepassword-connect memory '0'
set container name onepassword-connect network containers address '10.6.0.5'
set container name onepassword-connect shared-memory '0'
set container name onepassword-connect volume credentials source '/config/secrets/1password-credentials.json'
set container name onepassword-connect volume credentials destination '/home/opuser/.op/1password-credentials.json'
set container name onepassword-connect volume credentials mode 'ro'
set container name onepassword-connect volume data source '/tmp/onepassword/data'
set container name onepassword-connect volume data destination '/home/opuser/.op/data'
set container name onepassword-connect volume data mode 'rw'

# onepassword-sync
set container name onepassword-sync image 'docker.io/1password/connect-sync:1.7.1'
set container name onepassword-sync environment TZ value 'America/New_York'
set container name onepassword-sync memory '0'
set container name onepassword-sync shared-memory '0'
set container name onepassword-sync network containers address '10.6.0.7'
set container name onepassword-sync volume credentials source '/config/secrets/1password-credentials.json'
set container name onepassword-sync volume credentials destination '/home/opuser/.op/1password-credentials.json'
set container name onepassword-sync volume credentials mode 'ro'
set container name onepassword-sync volume data source '/tmp/onepassword/data'
set container name onepassword-sync volume data destination '/home/opuser/.op/data'
set container name onepassword-sync volume data mode 'rw'

# maddy

set container name smtp-relay environment SMTP_DOMAIN value 'holthome.net'
set container name smtp-relay environment SMTP_PORT value '25'
set container name smtp-relay environment SMTP_SERVER value 'holthome-net.mail.protection.outlook.com'
set container name smtp-relay image 'ghcr.io/foxcpp/maddy:0.7.0'
set container name smtp-relay memory '0'
set container name smtp-relay network containers address '10.6.0.25'
set container name smtp-relay shared-memory '0'
set container name smtp-relay volume smtp-relay-config destination '/data/maddy.conf'
set container name smtp-relay volume smtp-relay-config mode 'ro'
set container name smtp-relay volume smtp-relay-config source '/config/containers/smtp-relay/config/maddy.conf'
set container name smtp-relay volume holthome-cert source '/config/secrets/star_holthome_net.crt'
set container name smtp-relay volume holthome-cert destination '/data/star_holthome_net.crt'
set container name smtp-relay volume holthome-cert-key source '/config/secrets/star_holthome_net.key'
set container name smtp-relay volume holthome-cert-key destination '/data/star_holthome_net.key'

# unifi
set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment TZ value 'America/New_York'
set container name unifi environment UNIFI_GID value '999'
set container name unifi environment UNIFI_STDOUT value 'true'
set container name unifi environment UNIFI_UID value '999'
set container name unifi image 'ghcr.io/jacobalberty/unifi-docker:v7.4.162'
set container name unifi memory '0'
set container name unifi network containers address '10.6.0.10'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume data source '/config/containers/unifi'
set container name unifi volume data destination '/unifi'
set container name unifi volume data mode 'rw'
