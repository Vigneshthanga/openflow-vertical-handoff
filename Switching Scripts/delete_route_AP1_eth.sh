#!/bin/sh


route del -net 192.168.2.0 netmask 255.255.255.0 dev br_wifi0
route del -net 12.0.0.0 netmask 255.255.255.0 dev br_eth
route delete default gw 192.168.3.1 dev ath5
route delete default gw 192.168.2.1 dev br_wifi0
route add default dev br_tap
route -n
