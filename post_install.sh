#!/bin/sh -x
IP_ADDRESS=$(ifconfig | grep -E 'inet.[0-9]' | grep -v '127.0.0.1' | awk '{ print $2}')


sysrc nzbhydra2_enable=YES

chown -R nzbhydra2:nzbhydra2 /usr/local/nzbhydra2
chown -R nzbhydra2:nzbhydra2 /usr/local/share/nzbhydra2

service nzbhydra2 start

echo -e "NZBHydra2 now installed.\n" > /root/PLUGIN_INFO
echo -e "\nGo to $IP_ADDRESS:5076\n" >> /root/PLUGIN_INFO