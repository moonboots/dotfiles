#!/bin/sh
set -eu
opkg update
opkg install luci wget
/etc/init.d/uhttpd start
/etc/init.d/uhttpd enable
