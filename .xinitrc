#!/bin/bash
export LANG='en_US.UTF-8'
export LC_CTYPE='zh_CN.UTF-8'

export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

xhost +local:

export XDG_MENU_PREFIX=gnome-

exec ck-launch-session dbus-launch --auto-syntax --exit-with-session gnome-session
