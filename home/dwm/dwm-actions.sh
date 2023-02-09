#!/usr/bin/env bash

# 向该脚本传入不同参数以实现不同功能
# 目前可用: w, e, r, p, z, x, c, n: MODKEY + 对应键
#           W, E, R, P, Z, X, C, N: MODKEY + Shift + 对应键
#           f1 - f12 : MODKEY + Fn
#           F1 - F12 : MODKEY + Shift + Fn

msg () {
	notify-send -t 3000 "$1"
}

spath=$(dirname $(dirname $(readlink -f $(which dwm))))/scripts
case $1 in
	# MODKEY + 对应字母键
	w  ) $spath/dwm-wallpaper ;;
	e  ) dolphin & ;;
	r  ) msg "未定义 MODKEY + r ☹" ;;
	z  ) zotero & ;;
	c  ) google-chrome-stable & ;;
	x  ) todo ;;
	p  ) keepassxc & ;;
	n  ) msg "未定义 MODKEY + n 😞";;

	# MODKEY + Shift + 对应字母键
	W  ) $spath/dwm-wallpaper prev ;;
	E  ) thunar & ;;
	R  ) msg "未定义 MODKEY + Shift + r 😞";;
	Z  ) msg "未定义 MODKEY + Shift + z 😞";;
	X  ) msg "未定义 MODKEY + Shift + x 😞";;
	C  ) msg "未定义 MODKEY + Shift + c 😞";;
	P  ) msg "未定义 MODKEY + Shift + p 😞";;
	N  ) msg "未定义 MODKEY + Shift + n 😞";;

	# MODKEY + Fn
	f1 ) $spath/dwm-backlight d ;;
	f2 ) $spath/dwm-backlight u ;;
	f3 ) msg "未定义 MODKEY + Shift + F3 😞";;
	f4 ) msg "未定义 MODKEY + Shift + F4 😞";;
	f5 ) msg "未定义 MODKEY + Shift + F5 😞";;
	f6 ) msg "未定义 MODKEY + Shift + F6 😞";;
	f7 ) msg "未定义 MODKEY + Shift + F7 😞";;
	f8 ) msg "未定义 MODKEY + Shift + F8 😞";;
	f9 ) msg "未定义 MODKEY + Shift + F9 😞";;
	f10) $spath/dwm-volume t ;;
	f11) $spath/dwm-volume d ;;
	f12) $spath/dwm-volume u ;;

	# MODKEY + Shift + Fn
	F1 ) $spath/dwm-backlight c ;;
	F2 ) $spath/dwm-backlight w ;;
	F3 ) msg "未定义 MODKEY + Shift + F3 😞";;
	F4 ) msg "未定义 MODKEY + Shift + F4 😞";;
	F5 ) msg "未定义 MODKEY + Shift + F5 😞";;
	F6 ) msg "未定义 MODKEY + Shift + F6 😞";;
	F7 ) msg "未定义 MODKEY + Shift + F7 😞";;
	F8 ) msg "未定义 MODKEY + Shift + F8 😞";;
	F9 ) msg "未定义 MODKEY + Shift + F9 😞";;
	F10) msg "未定义 MODKEY + Shift + F10 😞";;
	F11) msg "未定义 MODKEY + Shift + F11 😞";;
	F12) msg "未定义 MODKEY + Shift + F12 😞";;
	*  ) 
		msg "未知操作 ❌"
		;;
esac
