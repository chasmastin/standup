#!/bin/sh
#  ╔═╗┌─┐┌┬┐  ┬ ┬┌─┐  ┌─┐┌┬┐┌─┐┌┐┌┌┬┐  ┬ ┬┌─┐┬
#  ║ ╦├┤  │   │ │├─┘  └─┐ │ ├─┤│││ ││  │ │├─┘│
#  ╚═╝└─┘ ┴   └─┘┴┘   └─┘ ┴ ┴ ┴┘└┘─┴┘  └─┘┴  o
dir=$(pwd)
cp ${dir}/com.cg.standup.plist /Library/LaunchDaemons/
cp ${dir}/marley.sh /tmp/
cp ${dir}/standup.sh /tmp/
launchctl load /Library/LaunchDaemons/com.cg.standup.plist
cd /tmp/ && curl -O https://dl.dropboxusercontent.com/u/59652646/Eat_All_The_Old_People.mp3
osascript -e 'tell application "Terminal" to do script "/tmp/marley.sh"'
osascript -e 'set Volume 3'
afplay /tmp/Eat_All_The_Old_People.mp3
