#!/bin/sh

mkdir MyIcon.iconset
sips -z 16 16 16x16.png --out MyIcon.iconset/icon_16x16.png
sips -z 32 32 32x32.png --out MyIcon.iconset/icon_16x16@2x.png
sips -z 32 32 32x32.png --out MyIcon.iconset/icon_32x32.png
sips -z 64 64 64x64.png --out MyIcon.iconset/icon_32x32@2x.png
sips -z 128 128 128x128.png --out MyIcon.iconset/icon_128x128.png
sips -z 256 256 256x256.png --out MyIcon.iconset/icon_128x128@2x.png
sips -z 256 256 256x256.png --out MyIcon.iconset/icon_256x256.png
sips -z 512 512 512x512.png --out MyIcon.iconset/icon_256x256@2x.png
sips -z 512 512 512x512.png --out MyIcon.iconset/icon_512x512.png
sips -z 512 512 1024x1024.png --out MyIcon.iconset/icon_512x512@2x.png
iconutil -c icns MyIcon.iconset
rm -R MyIcon.iconset
