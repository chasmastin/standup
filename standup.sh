#!/bin/sh
#  ╔═╗┌─┐┌┬┐  ┬ ┬┌─┐  ┌─┐┌┬┐┌─┐┌┐┌┌┬┐  ┬ ┬┌─┐┬
#  ║ ╦├┤  │   │ │├─┘  └─┐ │ ├─┤│││ ││  │ │├─┘│
#  ╚═╝└─┘ ┴   └─┘┴┘   └─┘ ┴ ┴ ┴┘└┘─┴┘  └─┘┴  o
dir=$(pwd)
cp ${dir}/com.cg.standup.plist /Library/LaunchDaemons/
cp ${dir}/marley.sh /tmp/
cp ${dir}/standup.sh /tmp/
launchctl load /Library/LaunchDaemons/com.cg.standup.plist
cd /tmp/ && curl -O http://www.angelxp.eu/sonnerie/b/m/Bob-Marley-Get-Up-Stand-Up.mp3
osascript -e 'tell application "Terminal" to do script "/tmp/marley.sh"'
osascript -e 'set Volume 3'
afplay /tmp/Bob-Marley-Get-Up-Stand-Up.mp3
