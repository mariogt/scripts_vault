#!/bin/sh

#  calcbright.sh
#  Created by Mario Gajardo Tassara --> 29-05-2022 18:33:18
#
#  script para mostrar en terminos de porcentaje en base 10 el nivel de brillo
#  devuelto por brihtnessctl
#
#  Copyright (c) 2022 MarioGT Software.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this text and associated documentation files (the "Text"), to deal
#  in the Text without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Text, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Text.

#  THE TEXT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE TEXT OR THE USE OR OTHER DEALINGS dtt TEXT.


currentBrigthness=$(brightnessctl -d intel_backlight get)
maxBrigthness=2047
var1=100

echo $((var1 * currentBrigthness / maxBrigthness))%
