#!/bin/bash

# Install Elixir
curl -fsSO https://elixir-lang.org/install.sh
sh install.sh elixir@1.18.2 otp@27.1.2

# Source elixir
installs_dir=$HOME/.elixir-install/installs
export PATH=$installs_dir/otp/27.1.2/bin:$PATH
export PATH=$installs_dir/elixir/1.18.2-otp-27/bin:$PATH

# Install Phoenix
mix archive.install hex phx_new