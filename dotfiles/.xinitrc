#!/bin/sh

user_resources=$HOME/.Xresources
user_modmap=$HOME/.Xmodmap

# Merge in defaults and keymaps
if [ -f "${user_resources}" ]; then
    xrdb -merge "${user_resources}"
fi

if [ -f "${user_modmap}" ]; then
    xmodmap "${user_modmap}"
fi

# Start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "${f}" ] && . "${f}"
 done
 unset f
fi

# Start Compton
compton --config ~/.config/compton/config -b

# Swap Escape with Caps Lock
setxkbmap -option caps:swapescape

# Set random wallpaper
feh --randomize --bg-scale ~/wallpapers/*

# Start the windows manager
exec i3
