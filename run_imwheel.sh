#!/bin/bash
# Created by Mario Gajardo Tassara

# launch imwheel only if is not running
if pgrep -x "imwheel" >/dev/null; then
	echo "Running"
else
	imwheel
fi
