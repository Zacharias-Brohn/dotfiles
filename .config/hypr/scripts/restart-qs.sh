#!/bin/zsh

qs -p /home/zach/GitClones/shell/shell.qml kill;

qs -d -p /home/zach/GitClones/shell/shell.qml && sleep 3;

killall kded6
