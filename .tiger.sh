#!/bin/bash
export JAVA_HOME=$HOME/java/jdk7
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$HOME/bin:\
/opt/bin:\
/usr/lib/ccache/bin:\
$JAVA_HOME/bin:\
$HOME/java/mvn/bin:\
$HOME/java/ant/bin:\
$HOME/java/gradle/bin:\
$PATH:/sbin:/usr/sbin

export LANG="en_US.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"

export XIM_SERVERS="fcitx"
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"

complete -c sudo

alias vi='vim'
alias l='ls -F'
alias la='ls -aF'
alias ll='ls -l'

