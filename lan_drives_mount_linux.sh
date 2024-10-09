#!/bin/sh

#  lan_drives_mount_linux.sh
#  Created by Mario Gajardo Tassara --> 12-2023
#
#  script for unmount/mount all shared drives from a Windows PC/Server
#  for unmounting you only have to pass 0 as the only script argument
#  for mounting you have 2 options:
#  you can pass the last digit of your server ip in the second argument like this: lan_drives_mount_linux.sh 1 10
#  or you can let the script find automatically your server IP with nmap + grep + awk
#  passing 2 as the only argument, beware that this option is slow
#
#  Copyright (c) 2023 MarioGT Software.

if [ "$1" == "0" ]; then
	sudo umount $HOME/winNas $HOME/winSlave
elif [ "$1" == "1" ]; then
	sudo mount -t cifs -o credentials=/etc/win-credentials,uid=1000,gid=1000,dir_mode=0777,file_mode=0777 //192.168.1.$2/nas $HOME/winNas
	sudo mount -t cifs -o credentials=/etc/win-credentials,uid=1000,gid=1000,dir_mode=0777,file_mode=0777 //192.168.1.$2/slave $HOME/winSlave
elif [ "$1" == "2" ]; then
	server_ip=$(sudo nmap -sn 192.168.1.1/100 | grep -B 2 'E1:FF:02:DD:1D:CD (Tyrel Corporate)' | grep 'Nmap scan' | awk '{print $5}')
	sudo mount -t cifs -o credentials=/etc/win-credentials,uid=1000,gid=1000,dir_mode=0777,file_mode=0777 //$server_ip/nas $HOME/winNas
	sudo mount -t cifs -o credentials=/etc/win-credentials,uid=1000,gid=1000,dir_mode=0777,file_mode=0777 //$server_ip/slave $HOME/winSlave
else
	echo "Pass 0 = unmount all mounted triton shared drives"
	echo "Pass 1 + last ip segment of  triton's ip = mount the shared drives"
	echo "Pass 2 = automatically search for triton ip and mounts the shared drives"
fi
