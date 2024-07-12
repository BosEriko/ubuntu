#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

echo "${B_YELLOW}=== Installing YouTube Downloader ===${RESET}"

# Download videos from youtube.com or other video platforms (https://github.com/ytdl-org/youtube-dl)
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube
sudo chmod a+rx /usr/local/bin/youtube

echo "${B_GREEN}=== YouTube Downloader Installed ===${RESET}"

echo "\n\n\n"
