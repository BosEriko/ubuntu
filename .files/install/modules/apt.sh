#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

echo "${B_YELLOW}=== Installing APT ===${RESET}"

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

# Clean up unused packages and cache
sudo apt autoremove -y
sudo apt clean

echo "${B_GREEN}=== APT installed ===${RESET}"

echo "\n\n\n"