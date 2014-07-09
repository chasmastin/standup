#!/bin/sh
cp com.cg.standup.plist /Library/LaunchDaemons/
launchctl load /Library/LaunchDaemons/com.cg.standup.plist
cd /tmp/ && curl -O http://www.angelxp.eu/sonnerie/b/m/Bob-Marley-Get-Up-Stand-Up.mp3
osascript -e 'set Volume 6'
afplay /tmp/Bob-Marley-Get-Up-Stand-Up.mp3
