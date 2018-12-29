#!/bin/bash

_home=/home/tiger

export JAVA_HOME=$_home/java/jdk
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export MAVEN_HOME=$HOME/java/mvn
export ANT_HOME=$HOME/java/ant
export GRADLE_USER_HOME=$HOME/java/gradle
export GRADLE_HOME=$GRADLE_USER_HOME

export PATH=\
$HOME/bin:\
/opt/bin:\
/data/bin:\
/usr/lib/ccache/bin:\
/usr/lib/distcc/bin:\
$JAVA_HOME/bin:\
$GRADLE_USER_HOME/bin:\
$MAVEN_HOME/bin:\
$ANT_HOME/bin:\
$PATH:/sbin:/usr/sbin

export LANG="en_US.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"
export EDITOR=vim

export XIM_SERVERS="xim"
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"

export QT_SELECT=5

export HISTSIZE=20000

test "$USER" = "root" && ulimit -SHn 65536
test "$USER" = "tiger" && ulimit -SHn 65536

alias e='emacs -nw'
alias vi='vim'
