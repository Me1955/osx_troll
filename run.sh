#! /bin/bash
curl -L https://raw.githubusercontent.com/Me1955/osx_troll/main/P.mp3 --output ~/Desktop/.troll.mp3

#echo "curl -s -L https://raw.githubusercontent.com/Me1955/osx_troll/main/run.sh | bash" >> ~/.bashrc

caffeinate &
afplay ~/Desktop/.troll.mp3 &

end=$((SECONDS+5))

while [ $SECONDS -lt $end ]; do
	osascript -e 'set volume 3'
done
