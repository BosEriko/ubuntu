#!/bin/zsh

echo "${B_YELLOW}=== Resetting ZSH ===${RESET}"

cd ~
git checkout .
git clean -fd
source ~/.zshrc

echo "${B_GREEN}=== ZSH Restarted ===${RESET}"
