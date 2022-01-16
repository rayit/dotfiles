#!/bin/sh

# Add some sexyness
picom &

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
