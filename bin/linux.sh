#!/bin/bash
#checks if os is linux
if [ "$(uname)" != "Linux" ]; then
	echo "Error: this script must be ran on a Linux system." >> linuxsetup.log
	exit 1
else
	echo "this is a linux system" >> linuxsetup.log
fi
#makes a directory named trash and moves it
mkdir -p ~/.TRASH
#checks if a file named .nanorc exists in home dir, then renames it
if [ -e ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo ".nanorc was changed to .bup_nanorc" >> linuxsetup.log
fi
#adds whatever is in etx/nanorc to a file named .nanorc
cat etc/nanorc > ~/.nanorc
#adds the echoed line to the title of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
