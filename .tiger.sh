#!/bin/bash
export JAVA_HOME=/opt/jdk
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=~/bin:/usr/lib/ccache/bin:$JAVA_HOME/bin:$PATH:/sbin:/usr/sbin:/opt/lampp/bin

export CCACHE_DIR=/var/tmp/ccache

export LANG=en_US.UTF-8
export LC_CTYPE=zh_CN.UTF-8

export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="xim"

alias vi='vim'
alias l='ls -F'
alias la='ls -aF'
alias ll='ls -l'

