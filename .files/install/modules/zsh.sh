#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

echo "${B_YELLOW}=== Installing ZSH ===${RESET}"

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh

# Install antigen (https://github.com/zsh-users/antigen)
yes | sudo curl -o /usr/share/zsh-antigen/antigen.zsh -sL git.io/antigen

echo "${B_GREEN}=== ZSH Installed ===${RESET}"

echo "\n\n\n"
