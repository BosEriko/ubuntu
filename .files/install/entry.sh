#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
B_BLUE='\033[1;34m'
B_RED='\033[1;31m'
RESET='\033[0m'

install_module() {
    local module=$1
    local module_lower=$(echo "$module" | tr '[:upper:]' '[:lower:]')
    echo -e "${B_YELLOW}=== Initializing $module ===${RESET}"
    cd ~ && .files/install/modules/${module_lower}.sh
    echo -e "${B_GREEN}=== $module Initialized ===${RESET}"
    echo -e "\n\n\n"
}

# Install all modules
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

# Welcome message
echo -e "\n${B_BLUE}======================================================"
echo -e "  🚀  Almost done! You still need to add your SSH keys:"
echo -e "======================================================${RESET}"

echo -e "${B_YELLOW}GitHub:    ${B_GREEN}https://github.com/settings/keys${RESET}"
echo -e "${B_YELLOW}GitLab:    ${B_GREEN}https://gitlab.com/-/user_settings/ssh_keys${RESET}"
echo -e "${B_YELLOW}Bitbucket: ${B_GREEN}https://bitbucket.org/account/settings/ssh-keys${RESET}\n"

# Check if SSH key exists before copying
if [[ -f ~/.ssh/id_rsa.pub ]]; then
    cat ~/.ssh/id_rsa.pub | clip.exe
    echo -e "${B_GREEN}✅ Your SSH public key has been copied to the clipboard!${RESET}"
    echo -e "Paste it into your account settings above."
else
    echo -e "${B_RED}⚠️  No SSH key found!${RESET}"
    echo -e "Generate one using:\n${B_YELLOW}ssh-keygen -t rsa -b 4096 -C \"boseriko@duck.com\" -f ~/.ssh/id_rsa -N \"\"${RESET}\n"
fi

echo -e "${B_BLUE}======================================================"
echo -e "  🎉  Setup complete! Enjoy coding, Bos! "
echo -e "======================================================${RESET}\n"
