#!/bin/bash
#  tiempoTerminal.sh
#  Created by Mario Gajardo Tassara --> 21:51 22-01-2024
#
#  script to get the temperature of the desired location
#  works by extracting the information from www.tiempo.com and parsing it with grep
#  Copyright (c) 2024 MarioGT Software.

clear

echo ""
echo "Temperaturas"
echo ""

echo $(
	echo "🐸 Colina"
	wget --no-check-certificate -q -F -O- https://www.tiempo.com/colina.htm | grep -Po '<span class="sensacion changeUnitT" data="\K[[:digit:]]*'
	echo °C
)

echo $(
	echo "👹 Copiapo"
	wget --no-check-certificate -q -F -O- https://www.tiempo.com/copiapo.htm | grep -Po '<span class="sensacion changeUnitT" data="\K[[:digit:]]*'
	echo °C
)

echo $(
	echo "👾 Caldera"
	wget --no-check-certificate -q -F -O- https://www.tiempo.com/caldera.htm | grep -Po '<span class="sensacion changeUnitT" data="\K[[:digit:]]*'
	echo °C
)
