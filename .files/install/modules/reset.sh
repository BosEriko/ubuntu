#!/bin/zsh

cd ~
git checkout .
git clean -fd
source ~/.zshrc

figlet "Welcome back, Bos!" | lolcat