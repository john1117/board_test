#!/bin/bash

audio_test() {
	echo "audio start" >> /dev/ttyAMA0
	amixer cset numid=3 1
	aplay /home/pi/police_s.wav &
}

usb_test() {
	count=0
	count=$(lsusb | grep "Dongle" | wc -l)
	if [ $count -eq 4 ]
	then
		echo "USB OK" >> /dev/ttyAMA0
	else
		echo "USB FAIL" >> /dev/ttyAMA0
		echo "USB FAIL" >> /dev/ttyAMA0
		echo "USB FAIL" >> /dev/ttyAMA0
		echo "USB FAIL" >> /dev/ttyAMA0
		echo "USB FAIL" >> /dev/ttyAMA0
	fi
}

ethernet_test() {
	ping -q -c5 google.com
	if [ $? -eq 0 ]
	then
		echo "Ethernet OK" >> /dev/ttyAMA0
	else
		ping -q -c5 google.com
		if [ $? -eq 0 ]
		then
			echo "Ethernet OK" >> /dev/ttyAMA0
		else
			echo "Ethernet FAIL" >> /dev/ttyAMA0
			echo "Ethernet FAIL" >> /dev/ttyAMA0
			echo "Ethernet FAIL" >> /dev/ttyAMA0
			echo "Ethernet FAIL" >> /dev/ttyAMA0
			echo "Ethernet FAIL" >> /dev/ttyAMA0
		fi
	fi
}

case "$1" in
start)
	echo "############ baseboard_test start !! ############" >> /dev/ttyAMA0
	ethernet_test
	audio_test
	python /home/pi/board_test/lcdtest.py
	echo "############ baseboard_test end !! ############" >> /dev/ttyAMA0
	;;
stop)
	;;
restart)
	;;
esac
exit 0
