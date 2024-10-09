#!/bin/bash
#  autopowermode.sh
#  Created by Mario Gajardo Tassara --> 29-05-2022 18:54:54
#
#  script for change automatically the energy profile of your asus laptop
#  battery = Quiet, connected = Balanced
#  finally we setup a nice icon to show in i3blocks
#
#  Copyright (c) 2022 MarioGT Software.

state=$(acpi -b | awk '{print $3}' | sed s/,//g)

if [ $state = "Discharging" ]; then
	asusctl profile -P Quiet #; brightnessctl -d amdgpu_bl0 set 130 > /dev/null 2>&1
else
	asusctl profile -P Balanced #; brightnessctl -d amdgpu_bl0 set 255 > /dev/null 2>&1
fi

mode=$(echo $(asusctl profile -p | awk -F' ' '{print $4}'))

case $mode in
"Balanced")
	echo 👾
	;;
"Performance")
	echo 👹
	;;
"Quiet")
	echo 👽
	;;
esac
