#!/usr/bin/env sh

# Declare an array of packages to be installed
packages=(
  zsh                          # Zsh is a shell designed for interactive use (http://www.zsh.org/)
  rbenv                        # Groom your app’s Ruby environment (https://github.com/rbenv/rbenv)
  figlet                       # FIGlet is a program for making large letters out of ordinary text (http://www.figlet.org/)
  postgresql                   # PostgreSQL, a free and open-source relational database management system (https://www.postgresql.org)
  postgresql-contrib           # Additional utilities for PostgreSQL
)

# Install packages from the array
sudo apt install -y "${packages[@]}"

# Install Redis
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
sudo apt update
sudo apt install -y redis

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs

# Clean up unused packages and cache
sudo apt autoremove -y
sudo apt clean

echo "Installation complete: All specified packages have been installed."
