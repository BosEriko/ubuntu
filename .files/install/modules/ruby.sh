#!/bin/bash

# Remove Ruby
sudo apt-get purge -y ruby ruby-dev
sudo apt-get autoremove -y

# Add Ruby back using rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Ruby build (https://github.com/rbenv/ruby-build)
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

# Source Bash
source ~/.bashrc

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash

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
