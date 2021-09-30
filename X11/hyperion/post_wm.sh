#!/bin/bash

# Don't export PATH here, it's just for this file
PATH=$PATH:"$HOME/.bin"

# Monitor setup
LEFT_MON="HDMI-0"
RIGHT_MON="DP-0"
xrandr --output $LEFT_MON --rotate left --left-of $RIGHT_MON
xrandr --output $RIGHT_MON --pos 2160x1380 --mode 3840x2160 --primary

# Set the DPI
xrandr --dpi 163

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
bspc config -m $LEFT_MON bottom_padding 30
tint3 &

