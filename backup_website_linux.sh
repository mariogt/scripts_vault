#!/bin/sh
# Created by Mario Gajardo Tassara

if [ -e "$HOME/backups/yoursite.tar.gz" ]; then
	echo "Old backup present ... deleting it"
	rm -r $HOME/backups/yoursite.tar.gz
else
	echo "No old backup to delete ..."
fi

cd $HOME/backups
echo "Downloading web site ..."
wget -r -X /mail,/tmp,/ssl,/perl5,/etc,/cache --progress=bar --show-progress --timestamping --ftp-user=user --ftp-password=**** ftp://ftp.yoursite.com/

echo "Download ready, compressing the data ..."
tar -czf yoursite.tar.gz -C $HOME/backups/ftp.yoursite.com/ ./$DIR

echo "Deleting the uncompressed folder"
rm -rf ~/backups/ftp.yoursite.com

echo "Your site backup is ready!"
