#!/bin/sh
set -eu

FIRMWARE="openwrt-ar71xx-generic-tl-wdr3600-v1-squashfs-sysupgrade.bin"

wget -P /tmp http://downloads.openwrt.org/snapshots/trunk/ar71xx/$FIRMWARE
# wget -P /tmp http://downloads.openwrt.org/snapshots/trunk/ar71xx/md5sums
# md5sum -c /tmp/md5sums 2> /dev/null | grep OK

# sysupgrade -v /tmp/$FIRMWARE &
