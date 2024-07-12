#!/bin/zsh

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

echo "${B_YELLOW}=== Resetting ZSH ===${RESET}"

cd ~
git checkout .
git clean -fd
source ~/.zshrc

echo "${B_GREEN}=== ZSH Restarted ===${RESET}"

echo "\n\n\n"
