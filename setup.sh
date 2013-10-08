#!/bin/bash
# Install vim configuration

# Default location of linux config repo - edit if required
LINUX_CONFIG=~/linux-config

# vim configuration
ln -s $LINUX_CONFIG/_vimrc ~/.vimrc
ln -s $LINUX_CONFIG/vimfiles ~/.vim

# tmux configuration
ln -s $LINUX_CONFIG/_tmux.conf ~/.tmux.conf

