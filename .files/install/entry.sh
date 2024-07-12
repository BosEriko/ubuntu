#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

install_module() {
    local module=$1
    local module_lower=$(echo "$module" | tr '[:upper:]' '[:lower:]')
    echo -e "${B_YELLOW}=== Initializing $module ===${RESET}"
    cd ~ && .files/install/modules/${module_lower}.sh
    echo -e "${B_GREEN}=== $module Initialized ===${RESET}"
    echo -e "\n\n\n"
}

install_module "APT"
install_module "Redis"
install_module "Node"
install_module "fzf"
install_module "YouTube"
install_module "Docker"
install_module "Ruby"
install_module "mkdir"
install_module "zsh"
install_module "Origin"
install_module "SSH"
install_module "Reset"

cd ~ && figlet "Welcome back, Bos!" | lolcat