#!/bin/sh

# install all cmus dependences
sudo apt-get update
sudo apt-get install -y libncursesw5-dev
sudo apt-get install -y libpulse-dev
sudo apt-get install -y libasound2-dev
sudo apt-get install -y libroar-dev
sudo apt-get install -y libao-dev
sudo apt-get install -y libjack-dev
sudo apt-get install -y libsamplerate0-dev
sudo apt-get install -y libcdio-dev
sudo apt-get install -y libcdio-cdda-dev
sudo apt-get install -y libcddb2-dev
sudo apt-get install -y libcue-dev
sudo apt-get install -y libflac-dev
sudo apt-get install -y libvorbis-dev
sudo apt-get install -y libmpcdec-dev
sudo apt-get install -y libwavpack-dev
sudo apt-get install -y libmad0-dev
sudo apt-get install -y libavformat-dev libavcodec-dev
sudo apt-get install -y libfaad-dev
sudo apt-get install -y libmp4v2-dev
sudo apt-get install -y libmodplug-dev
sudo apt-get install -y libmikmod-dev
sudo apt install alsa

# download cmus repo configure, build & install
git clone https://github.com/cmus/cmus
cd cmus
sudo make uninstall
./configure CONFIG_MIKMOD=y && make
sudo make install
# :set output_plugin=pulse
