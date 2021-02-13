#!/bin/bash

# Don't export PATH here, it's just for this file
PATH=$PATH:"$HOME/.bin"

# Make sure that the gtk scale stuff is correct
export GDK_SCALE=2

# Set DPI (can't do this until WM is alive)
xrandr --dpi 331

# Setup Wallpaper
$HOME/.config/bspwm/setup-wallpaper &

# Java reparenting WM fix
wmname LG3D &

# sxhkd
sxhkd &

# Compositor
#exec compton &

# exec tint3
bspc config bottom_padding 60
tint3 &

