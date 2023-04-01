#!/bin/bash

# Remove .vimrc
rm -f ~/.vimrc
echo "Removed ~/.vimrc"

#Remove line from .bashrc
sed -i '/source ~\/.dotfiles\/bashrc_custom/d' ~/.bashrc

#Remove .TRASH directory
rm -rf ~/.TRASH
echo "Removed ~/.TRASH directory"
