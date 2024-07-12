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
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
RUBY_VERSION=3.3.3
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
rbenv shell $RUBY_VERSION

# Verify Installation
echo -e "\n\n\n"
echo "=== Current Ruby Version ==="
ruby -v
echo -e "\n\n\n"

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

# Rehash Gems
rbenv rehash