#!/bin/bash

# Don't export PATH here, it's just for this file
PATH=$PATH:"$HOME/.bin"

# Monitor setup
CENTER_MON="DVI-I-1"
LEFT_MON="DP-3"
RIGHT_MON="DP-2"
xrandr --output $LEFT_MON --rotate left --left-of $CENTER_MON
xrandr --output $CENTER_MON --primary --pos 1440x300
xrandr --output $RIGHT_MON --rotate right --right-of $LEFT_MON --pos 4000x500

# Setup Wallpaper
$HOME/.config/bspwm/setup-wallpaper &

# Java reparenting WM fix
wmname LG3D &

# sxhkd
sxhkd &

# bspwm mnemosyne specific info
bspc monitor $LEFT_MON -d 1 2
bspc monitor $RIGHT_MON -d 3 4

# exec tint3
bspc config -m $CENTER_MON top_padding 30
tint3 &

