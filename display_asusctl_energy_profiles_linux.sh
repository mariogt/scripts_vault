#!/bin/bash
# show a nice icon depending on the active asusctl profile mode

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
