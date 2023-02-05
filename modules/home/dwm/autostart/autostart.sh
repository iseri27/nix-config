#!/usr/bin/env bash

# 一次性程序

dwm-wallpaper

sh $HOME/.dwm/adjust-temp.sh

# 持续运行的程序

picom &

dunst &

nm-applet &

conky &

fcitx5 &

ps -ef | grep "dwmblocks" | grep -v grep | awk '{print $2}' | xargs kill 2>/dev/null
dwmblocks > $HOME/.dwmblocks.log 2>&1 &

nextcloud &
