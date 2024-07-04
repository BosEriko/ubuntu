#!/usr/bin/env sh

cd ~
sudo apt update -y
sudo apt upgrade -y
git init
git remote add origin https://github.com/BosEriko/ubuntu.git
git fetch
git reset --hard origin/master
git submodule update --init