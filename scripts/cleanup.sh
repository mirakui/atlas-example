#!/bin/bash -eux

echo "==> Remove the traces of the template MAC address and UUIDs"
/bin/sed -i '/^\(HWADDR\|UUID\)=/d' /etc/sysconfig/network-scripts/ifcfg-eth0

echo "==> Cleaning up tmp"
/bin/rm -rf /tmp/*

echo "==> Remove the SSH host keys"
/bin/rm -f /etc/ssh/*key*

echo "==> Remove the root user’s shell history"
/bin/rm -f ~root/.bash_history
unset HISTFILE

sync
