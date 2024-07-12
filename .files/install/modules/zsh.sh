#!/bin/bash

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s $(which zsh)
