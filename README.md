#Configuration#

https://github.com/SteveOrbell/Config contains development configuration shared
between home and office PCs.

Install on a new machine by cloning the repository and creating the links below

Windows:

    mklink \Users\<user>\_vimrc <cloned repo>\_vimrc
    mklink /d \Users\<user>\vimfiles <cloned repo>\vimfiles

Linux:

    ln -s <cloned repo>/_vimrc ~/.vimrc
    ln -s <cloned repo>/vimfiles ~/.vim

##Todo##

* Write install script(s)
* Add tmux configuration
