#!/bin/bash

echo "${B_YELLOW}=== Installing FZF ===${RESET}"

# fzf (https://github.com/junegunn/fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

echo "${B_GREEN}=== FZF Installed ===${RESET}"
