#!/bin/bash

# Don't export PATH here, it's just for this file
PATH=$PATH:"$HOME/.bin"

# Monitor setup
#RIGHT_MON="DP-2"
LEFT_MON="DP-2"
sh ~/.screenlayout/default.sh

#xrandr --output HDMI-0 --off \
#       --output DP-0 --mode 3840x2160 --pos 0x0 --rotate normal \
#       --output DP-1 --off \
#       --output DP-2 --primary --mode 3840x2160 --pos 3840x0 --rotate normal \
#       --output DP-3 --off \
#       --output DP-4 --off \
#       --output DP-5 --off \
#       --output HDMI-2-1 --off \
#       --output DP-2-1 --off \
#       --output HDMI-2-2 --off

xrandr --output $LEFT_MON --left-of $RIGHT_MON
#xrandr --output $RIGHT_MON --primary
#xrandr --output $RIGHT_MON --pos 2160x1380 --mode 3840x2160 --primary

# Set the DPI
xrandr --dpi 163

# Setup Wallpaper
$HOME/.config/bspwm/setup-wallpaper &

# Java reparenting WM fix
wmname LG3D &

# sxhkd
sxhkd &

# bspwm mnemosyne specific info
bspc monitor $LEFT_MON -d 1 2 3 4
#bspc monitor $RIGHT_MON -d 3 4

# exec tint3
bspc config -m $LEFT_MON bottom_padding 30
tint3 &

