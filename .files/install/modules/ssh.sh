#!/bin/bash

B_YELLOW='\033[1;33m'
B_GREEN='\033[1;32m'
RESET='\033[0m'

echo "${B_YELLOW}=== Generating SSH Key ===${RESET}"

# Generate SSH Key
yes | ssh-keygen -t rsa -b 4096 -C "bos.eriko@gmail.com"

# Array of hosts to add to known_hosts
hosts=(
  github.com
  gitlab.com
  bitbucket.org
)

# Add SSH keys for GitHub, GitLab, and Bitbucket to known_hosts
for host in "${hosts[@]}"; do
  ssh-keyscan -t rsa "$host" >> ~/.ssh/known_hosts
done

echo "${B_GREEN}=== SSH Key Generated ===${RESET}"

echo "\n\n\n"
