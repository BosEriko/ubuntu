#!/bin/bash

# fzf (https://github.com/junegunn/fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install
echo "Installing: fzf has been installed."
