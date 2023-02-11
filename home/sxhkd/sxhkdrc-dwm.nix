''
# DWM Actions
alt + {1-9}
	dwmc viewex {0-8}
alt + 0
	dwmc viewall && dwmc setlayoutex 4
# 将窗口移到所有 tag 下
alt + shift + 0
	dwmc tagex 0
# 将窗口移动到某 tag 下
alt + shift + {1-9}
	dwmc tagex {1-9}
# 将窗口添加到某 tag 下
ctrl + alt + {1-9}
	dwmc toggletagex {0-8}
# 切换主从
alt + shift + a
	dwmc zoom
# 切换 bar
alt + b
	dwmc togglebar
# 减少/增大主从比例
alt + {h, l}
	dwmc setmfact {-0.05,0.05}
# 切换焦点
alt + {j, k}
	dwmc focusstack {1,-1}
# 减少/增大主窗口数量
alt + {d, i}
	dwmc incnmaster {-1,1}
# 切换布局
alt + {t, y, f, m, g}
	dwmc setlayoutex {0-4}
# 切换所有 tag 的布局
alt + shift + {t, y, f, m, g}
	dwmc setlayoutallex {0-4}
# 关闭窗口
alt + q
	dwmc killclient
# 关闭窗口
super + q
	dwmc killclient
# 打开电源菜单
alt + shift + q
	dwm-powermenu
# 减小 gap
alt + minus
	dwmc setgapsex -5
# 增大 gap
alt + equal
	dwmc setgapsex 5
# 重设 gap
alt + shift + minus
	dwmc resetgapex
# 切换显示 gap
alt + shift + equal
	dwmc togglegapex
# 在当前与上一个 tag 之间切换
alt + Tab
	dwmc viewex -1
# 正向遍历 tag
super + Tab
	dwmc viewnextex 1
# 逆向遍历 tag
super + shift + Tab
	dwmc viewnextex -1
# 切换显示某 tag
super + {1-9}
	dwmc toggleviewex {0-8}
# 打开 powermenu
alt + shift + q
	dwm-powermenu

# 启动应用
alt + c
	google-chrome-stable
alt + e
	dolphin
alt + shift + e
	thunar
ctrl + alt + t
	konsole
alt + p
	keepassxc
alt + z
	zotero
alt + semicolon
	todo
alt + Return
	st
alt + shift + Return
	st -c "st-floating"
alt + space
	dwm-launcher -fn "JetBrainsMono Nerd Font:style=medium:size=13"
alt + shift + space
    dwmc togglefloating
super + space
	dmenu_run -fn "JetBrainsMono Nerd Font:style=medium:size=13"
super + Return
	konsole

# 切换壁纸
alt + w
	dwm-wallpaper
alt + shift + w
	dwm-wallpaper prev

# 截图
alt + shift + s
	dwm-screenshot select

# 亮度控制
alt + {F1, F2}
	dwm-backlight {d, u}
alt + F2
	dwm-backlight u
alt + shift + {F1, F2}
	dwm-backlight {c, w}
XF86MonBrightnessUp
	dwm-backlight u
XF86MonBrightnessDown
	dwm-backlight d

# 音量控制
alt + {F11, F12}
	dwm-volume {d, u}
XF86AudioMute
	dwm-volume t
XF86AudioRaiseVolume
	dwm-volume u
XF86AudioLowerVolume
	dwm-volume d

# 重载 sxhkd 配置文件
super + shift + r
	pkill -usr1 -x sxhkd
''
