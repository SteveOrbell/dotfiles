#!/bin/bash
# Install vim configuration

# Default location of vim config repo - edit if required
VIM_CONFIG=~/vim-config

ln -s $VIM_CONFIG/_vimrc ~/.vimrc
ln -s $VIM_CONFIG/vimfiles ~/.vim
