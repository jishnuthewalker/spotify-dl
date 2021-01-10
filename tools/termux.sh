#!/data/data/com.termux/files/usr/bin/bash

echo "[ spotifydl ] Installing required packages..."

# Install packages
pkg install -y nodejs ffmpeg

# Get spotify-dl from npmjs
echo "[ spotifydl ] Installing spotify-dl"
npm install -g spotify-dl

# Setup app sharing script
echo "[ spotifydl ] Setting up scripts..."

if [ ! -d "$HOME/bin" ]; then
    mkdir "$HOME/bin"
fi

#curl https://gist.githubusercontent.com/jishnuthewalker/b57509249f91ee38b42463b651b2ced0/raw/c0ccaf154d964da3f1b52a79ed50a466926b0ac7/termux-url-opener > "$HOME/bin/termux-url-opener"
#alternate script


echo "[ spotifydl ] Setting up storage..."
termux-setup-storage

echo "Sucess!"
echo "You can now share song from Spotify App to Termux and Music will be downloaded."
exit 0
