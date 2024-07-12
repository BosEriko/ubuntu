#!/bin/bash

# Declare an array of packages to be installed
packages=(
  zsh                          # Zsh is a shell designed for interactive use (http://www.zsh.org/)
  rbenv                        # Groom your app’s Ruby environment (https://github.com/rbenv/rbenv)
  figlet                       # FIGlet is a program for making large letters out of ordinary text (http://www.figlet.org/)
  postgresql                   # PostgreSQL, a free and open-source relational database management system (https://www.postgresql.org)
  postgresql-contrib           # Additional utilities for PostgreSQL
  zsh-antigen                  # The plugin manager for zsh
)

# Install packages from the array
sudo apt install -y "${packages[@]}"

# Clean up unused packages and cache
sudo apt autoremove -y
sudo apt clean
