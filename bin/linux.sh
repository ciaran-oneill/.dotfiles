#!/bin/bash
# Check if the operating system is Linux
if [ "$(uname)" == "Linux" ]; then
echo "Operating system is Linux"
else
echo "Error: Operating system is not Linux" >> linuxsetup.log
exit 1
fi

# Create the .TRASH directory if it doesn't exist
mkdir -p ~/TRASH

#Check if the .vimrc file exists in the home directory
if [ -f ~/.vimrc]; then
mv ~/.vimrc ~/.bup_vimrc
echo "The existing .vimrc file was renamed to .bup_vimrc
fi

# Overwrite the contents of etc/vimrc to .vimrc in the home directory
cp /etc/vimrc ~/.vimrc

#Add the statement to the end of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
