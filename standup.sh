#!/bin/sh
#  ╔═╗┌─┐┌┬┐  ┬ ┬┌─┐  ┌─┐┌┬┐┌─┐┌┐┌┌┬┐  ┬ ┬┌─┐┬
#  ║ ╦├┤  │   │ │├─┘  └─┐ │ ├─┤│││ ││  │ │├─┘│
#  ╚═╝└─┘ ┴   └─┘┴┘   └─┘ ┴ ┴ ┴┘└┘─┴┘  └─┘┴  o
dir=$(pwd)
plist=/Library/LaunchDaemons/com.cg.standup.plist
popup=/tmp/marley.sh
thisscript=/tmp/standup.sh
audiofile=/tmp/standup.mp3
#MC Theripy rap version:
#linktofile=https://dl.dropboxusercontent.com/u/59652646/Eat_All_The_Old_People.mp3
#Bob Marley:
#linktofile=http://www.angelxp.eu/sonnerie/b/m/Bob-Marley-Get-Up-Stand-Up.mp3
#techno version:
linktofile=https://soundcloud.com/henryfong/stand-up#t=0:37
if [ ! -f $plist ]; then
  cp ${dir}/com.cg.standup.plist /Library/LaunchDaemons/
fi
if [ ! -f $popup ]; then
  cp ${dir}/marley.sh /tmp/
fi
if [ ! -f $thisscript ]; then
  cp ${dir}/standup.sh /tmp/
fi

launchctl list |grep standup
if [ $? != 0 ]; then
    launchctl load /Library/LaunchDaemons/com.cg.standup.plist
fi
if [ ! -f $audiofile ]; then
    cd /tmp/ && curl $linktofile > $audiofile
fi
osascript -e 'tell application "Terminal" to do script "/tmp/marley.sh"'
osascript -e 'set Volume 8'
afplay $audiofile
