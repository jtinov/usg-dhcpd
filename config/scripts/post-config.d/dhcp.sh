#!/bin/sh

/etc/init.d/dhcpd stop

ln -sf /config/user-data/dhcp/sbin/dhcpd /usr/sbin/dhcpd
cp -f  /config/user-data/dhcp/init.d/dhcpd /etc/init.d/dhcpd

/etc/init.d/dhcpd start

exit 0
