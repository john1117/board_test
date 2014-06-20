#!/bin/bash

# USB test
echo -n "usb port count : " >> /dev/ttyAMA0
lsusb | grep "Dongle" | wc -l >> /dev/ttyAMA0

# Ethernet test
ping -q -c5 google.com
if [ $? -eq 0 ]
then
	echo "Ethernet ok" >> /dev/ttyAMA0
else
	echo "Ethernet faile" >> /dev/ttyAMA0
fi

# Audio Test
aplay police_s.wav
