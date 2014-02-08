#!/bin/sh
export PATH="/mnt/utmp/milkyhelper/usr/bin:$PATH"
export LD_LIBRARY_PATH="/mnt/utmp/milkyhelper/usr/lib:$LD_LIBRARY_PATH"
export HOME="/mnt/utmp/milkyhelper" XDG_CONFIG_HOME="$HOME"

if [ -d /mnt/utmp/milkyhelper/share ];then
   export XDG_DATA_DIRS=/mnt/utmp/milkyhelper/share/:$XDG_DATA_DIRS:/usr/share/
fi

TERMINAL=`awk -F = '/TERM/ {print $2}' $XDG_CONFIG_HOME/startup.conf`
cd "$HOME"
$TERMINAL
wait $!
