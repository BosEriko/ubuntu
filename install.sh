#!/usr/bin/env sh

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git
cd ~
git init
git remote add origin https://github.com/BosEriko/ubuntu.git
git fetch
git reset --hard origin/master
git submodule update --init