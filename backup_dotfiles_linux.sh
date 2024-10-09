#!/bin/bash

# search for the user Download folder
downloadFolder=$HOME/$(cat $HOME/.config/user-dirs.dirs | grep "XDG_DOWNLOAD_DIR" | grep -oP '(?<=/)[^ ]*' | awk '{ print substr( $0, 1, length($0)-1) }')
cd $downloadFolder

# make the folder for the dot files
mkdir dotfiles

#cp --parents /etc/systemd/logind.conf  $HOME/downloadFolder/dotfiles/
#cp --parents /etc/fstab  $HOME/$downloadFolder/dotfiles/
#cp --parents /etc/tlp.conf  $HOME/$downloadFolder/dotfiles/

# files
echo "copying files!"
cp --parents /etc/X11/xorg.conf.d/90-touchpad.conf $downloadFolder/dotfiles/
cp --parents $HOME/.bashrc $downloadFolder/dotfiles/
cp --parents $HOME/.bash_prompt $downloadFolder/dotfiles/
cp --parents $HOME/.gitconfig $downloadFolder/dotfiles/
cp --parents $HOME/.global_ignore $downloadFolder/dotfiles/
cp --parents $HOME/.imwheelrc $downloadFolder/dotfiles/
cp --parents $HOME/.emacs $downloadFolder/dotfiles/
cp --parents $HOME/.vimrc $downloadFolder/dotfiles/
cp --parents $HOME/.Xprofile $downloadFolder/dotfiles/
cp --parents $HOME/.Xresources $downloadFolder/dotfiles/
cp --parents $HOME/.Xprofile $downloadFolder/dotfiles/
cp --parents $HOME/.gtkrc-2.0 $downloadFolder/dotfiles/
cp --parents $HOME/.picom.conf $downloadFolder/dotfiles/
cp --parents $HOME/.config/libinput-gestures.conf $downloadFolder/dotfiles/
# folders
echo "copying folders!"
cp --parents -r $HOME/.local/share/applications/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.ssh/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.emacs.d/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.vim/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.icons/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.themes/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.fonts/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.mame/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/autorandr/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/calibre/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/cmus/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/dosbox/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/filezilla/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/fsearch/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/gtk-2.0/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/gtk-3.0/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/gtk-4.0/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/i3/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/kitty/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/mc/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/lutris/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/REAPER/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/rofi/ $downloadFolder/dotfiles/
cp --parents -r $HOME/.config/Thunar/ $downloadFolder/dotfiles/

echo "compressing the data"
tar -czf dotfiles_linux.tar.gz -C $downloadFolder/dotfiles/ ./$DIR

echo "deleting the dotfiles folder"
rm -rf $downloadFolder/dotfiles/

echo "work done 🍻"
