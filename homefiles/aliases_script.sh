#!/bin/bash
dot="/home/g_sigler/dotfiles/homefiles/.bash_aliases"
home="/home/g_sigler/.bash_aliases"

if [ -f "$home" ] && [ ! -L "$home" ]; then
	mv "$home" "$home.backup"
fi

ln -sf "$dot" "$home"

echo " Reload your environment by using source ~/.bashrc or logging out"
