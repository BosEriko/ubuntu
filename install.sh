#!/usr/bin/env sh

sudo apt install -y git
cd ~
git init
git remote add origin https://github.com/BosEriko/debian.git
git fetch
git reset --hard origin/master
git submodule update --init