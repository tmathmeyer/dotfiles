#!/bin/bash

# Don't export PATH here, it's just for this file
PATH=$PATH:"$HOME/.bin"

# Monitor setup
xrandr --output DisplayPort-0 --off \
       --output DisplayPort-1 --mode 2560x1440 --pos 4000x0 --rotate right \
       --output DisplayPort-2 --mode 2560x1440 --pos 1440x615 --rotate normal \
       --output DisplayPort-3 --mode 2560x1440 --pos 0x0 --rotate left

# Setup Wallpaper
$HOME/.config/bspwm/setup-wallpaper &

# Java reparenting WM fix
wmname LG3D &

# sxhkd
sxhkd &

# exec tint3
bspc config -m DisplayPort-1 bottom_padding 30
tint3 &

xrdb -merge ~/.Xresources
