#!/bin/bash

# removes .nanorc file in home dir
if [ -e "~/.nanorc" ]; then
	rm ~/.nanorc
fi
# this removes the added text from the file .bashrc
sed '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

#this removes the TRASH dir in home dir
if [ -e "~/.TRASH" ]; then
	rm ~/.TRASH
fi
