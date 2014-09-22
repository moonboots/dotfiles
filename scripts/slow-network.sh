#!/bin/sh
sudo tc qdisc add dev lo root netem delay 100ms
# To remove: sudo tc qdisc del dev lo root netem delay 100ms
