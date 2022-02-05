#!/bin/sh

lxsession &

# Background selector and storing
nitrogen --restore &

picom --experimental-backend &
:
nm-applet &

volumeicon &

trayer --edge top --align right --widthtype request --padding 6 --SetDockType true --SetPartialStrut true \
    --expand true --transparent true --alpha 0 --tint 0x282c34 --height 22 &

# Start last feh --bg-sclale ... used
~/.fehbg

# Nice minimal status bar 
# slstatus &
~/.dwm/bar/bar.sh & 

# for java programs
wmname LG3D
export _JAVA_AWT_WM_NONREPARENTING=1

# Our WM
exec dwm
