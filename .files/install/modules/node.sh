#!/bin/bash

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs

# Install Yarn (https://github.com/yarnpkg/yarn)
sudo npm install --global yarn

# Install fnm (https://github.com/Schniz/fnm)
cd ~ && curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "~/.fnm" --skip-shell

# Install packages using NPM (https://nodejs.org/)
yarn global add webtorrent-cli

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true
