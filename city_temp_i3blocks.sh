#!/bin/bash
#  city_temp_i3blocks.sh
#  Created by Mario Gajardo Tassara --> 29-05-2022 18:57:39
#
#  script to get the temperature of the location passed through the var $1
#  works by extracting the information from www.tiempo.com and parsing it with grep
#  also when you press the mouse middle click, takes you to the accuweather web page
#
#  Copyright (c) 2022 MarioGT Software.

#<span class="sensacion changeUnitT" data="25.05|0|Sensaci&oac

echo $(
	echo $1
	wget --no-check-certificate -q -F -O- https://www.tiempo.com/$2.htm | grep -Po '<span class="sensacion changeUnitT" data="\K[[:digit:]]*'
	echo °C
)

# mouse middle click
if [[ "${BLOCK_BUTTON}" -eq 2 ]]; then
	brave-browser https://www.tiempo.com/colina.htm
	#firefox --new-tab https://www.tiempo.com/colina.htm
fi
