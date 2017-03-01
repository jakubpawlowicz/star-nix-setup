#!/bin/bash

xrdb -merge ~/.Xresources
xrandr --output eDP1 --dpi 196
xbacklight -set 40
