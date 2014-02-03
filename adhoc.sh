#!/bin/bash
service network-manager stop
ifconfig wlan2 down
iwconfig wlan2 mode ad-hoc
iwconfig wlan2 channel 3
iwconfig wlan2 essid "DODWAN-ADHOC"
ifconfig wlan2 up
