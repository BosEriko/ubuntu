#!/bin/bash

# Ruby build (https://github.com/rbenv/ruby-build)
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Update ruby build list (https://github.com/rbenv/ruby-build)
git -C "$(rbenv root)"/plugins/ruby-build pull

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
rbenv install 3.2.2
rbenv global 3.2.2
rbenv rehash
echo "Installing: rbenv has been initialized."

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

echo "Installing: Gem apps have been installed."
