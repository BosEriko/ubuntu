#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

echo "${B_YELLOW}=== Creating Directories ===${RESET}"

# Make the directories for Personal/Work
mkdir -p ~/Documents/Codes/Work ~/Documents/Codes/Personal

# Make the directory for your Movies
mkdir -p $STORAGE/Movies

# Make the directory for your Anime
mkdir -p $STORAGE/Anime

# Make the directory for YouTube videos
mkdir -p $STORAGE/YouTube

echo "${B_GREEN}=== Directories Created ===${RESET}"

echo "\n\n\n"
