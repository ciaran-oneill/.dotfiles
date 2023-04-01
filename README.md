# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash


Makefile:
Makefile has two targets: linux and clean.

The linux target has a prerequisite on the clean target, meaning that clean must be run first before linux.

The linux target runs the ./bin/linux.sh script, which sets up a Linux environment by creating a .TRASH directory, renaming the .vimrc file (if it exists), copying the etc/vimrc file to ~/.vimrc, and appending source ~/.dotfiles/etc/bashrc_custom to the end of the ~/.bashrc file.
cleanup.sh:
Removes .vimrc, removes a specific line from .bashrc, and removes the .TRASH directory

linux.sh:
Checks to see if the operating system in linux and returns an error if it is not, creates the .TRASH directory (if it doesn’t exist), checks to see if the .vimrc file exists in the home directory, overwrites the contents of etc/vimrc to .vimrc in the home directory, and adds a statement to the end of the .bashrc file





.
