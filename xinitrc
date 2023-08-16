#!/bin/sh

lxsession &

# Background selector and storing
#nitrogen --restore &

picom -cfF -o 0.38 -O 200 -I 200 -t 0 -l 0 -r 3 -D2 -m 0.88 -b

# Start last feh --bg-sclale ... used
~/.fehbg

# Nice minimal status bar 
slstatus &

# for java programs
wmname LG3D
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_HOME=/usr/local/jdk-17/

# Our WM
exec dwm
