#!/bin/bash

# Declare an array of packages to be installed
packages=(
  zsh                         # Zsh is a shell designed for interactive use, offering powerful features and customization options.
  figlet                      # FIGlet is a program for making large letters out of ordinary text, used for banners in terminal.
  postgresql                  # PostgreSQL, a free and open-source relational database management system for robust data storage.
  postgresql-contrib          # Additional utilities and functionality for PostgreSQL, enhancing its capabilities.
  zsh-antigen                 # A tool for managing Zsh configurations, including themes and plugins.
  zlib1g-dev                  # Compression library development files, necessary for compiling software that manipulates zlib compressed data.
  build-essential             # A meta-package that installs GCC, make, and other tools required for compiling software.
  libssl-dev                  # Development files for OpenSSL, used for secure communication over networks.
  libreadline-dev             # Development files for the readline library, allowing users to edit command lines as they are typed.
  libyaml-dev                 # Development files for the YAML parser and emitter library, used for YAML-based configurations.
  libxml2-dev                 # Development files for the XML C parser and toolkit, necessary for software that processes XML.
  libxslt1-dev                # Development files for the XSLT engine, used for transforming XML documents.
  libcurl4-openssl-dev        # Development files for libcurl (OpenSSL flavour), required for data transfer over various protocols.
  libffi-dev                  # Development files for the Foreign Function Interface library, enabling calling functions defined in other languages.
)

# Install packages from the array
sudo apt install -y "${packages[@]}"

# Clean up unused packages and cache
sudo apt autoremove -y
sudo apt clean
