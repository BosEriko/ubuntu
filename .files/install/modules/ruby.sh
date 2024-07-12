#!/bin/bash

# Remove Ruby
sudo apt-get purge -y ruby ruby-dev
sudo apt-get autoremove -y

# Install Rbenv
sudo apt install -y rbenv

# Ruby build (https://github.com/rbenv/ruby-build)
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Update ruby build list (https://github.com/rbenv/ruby-build)
git -C "$(rbenv root)"/plugins/ruby-build pull

# Source rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash

# Verify Installation
echo "=== Current Ruby Version ==="
ruby -v
echo "\n\n"

# Install packages using Gem (https://rubygems.org/)
gems=(
  bundler
  rails
  lolcat
)

# Install gems using Gem
for gem in "${gems[@]}"; do
  gem install "$gem"
done
