#!/bin/sh
#  calcbright.sh
#  Created by Mario Gajardo Tassara --> 29-05-2022 18:33:18
#
#  script para mostrar en terminos de porcentaje en base 10 el nivel de brillo
#  devuelto por brihtnessctl

currentBrigthness=$(brightnessctl -d intel_backlight get)
maxBrigthness=2047
var1=100

echo $((var1 * currentBrigthness / maxBrigthness))%
