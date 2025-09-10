#!/bin/bash

# Declare an array of packages to be installed
packages=(
  figlet                      # FIGlet is a program for making large letters out of ordinary text, used for banners in terminal.
  jq                          # jq is a lightweight and flexible command-line JSON processor, required for Todoist integration.
  postgresql                  # PostgreSQL, a free and open-source relational database management system for robust data storage.
  postgresql-contrib          # Additional utilities and functionality for PostgreSQL, enhancing its capabilities.
  zsh                         # Zsh is a shell designed for interactive use, offering powerful features and customization options.
  zsh-antigen                 # A tool for managing Zsh configurations, including themes and plugins.
)

# Install packages from the array
sudo apt install -y "${packages[@]}"

# Clean up unused packages and cache
sudo apt autoremove -y
sudo apt clean
