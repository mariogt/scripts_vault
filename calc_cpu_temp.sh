#!/bin/sh
# Created by Mario Gajardo Tassara

currentTemp=$(cat /sys/class/thermal/thermal_zone1/temp)
echo $((currentTemp / 1000))°C
