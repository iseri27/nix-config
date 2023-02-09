#!/usr/bin/env bash

# 一次性程序

[[ -f $HOME/.fehbg ]] && {
	$HOME/.fehbg
} || {
	dwm-wallpaper random
}

sh $HOME/.dwm/adjust-temp.sh

# 持续运行的程序

picom &

dunst &

ps -ef | grep "/usr/bin/kwalletd5" | grep -v grep | awk '{print $2}' | xargs kill 2>/dev/null
nm-applet &

conky &

fcitx5 &

ps -ef | grep "dwmblocks" | grep -v grep | awk '{print $2}' | xargs kill 2>/dev/null
dwmblocks 2>>$HOME/.dwmblocks.log &

nextcloud &

blueman-applet &
