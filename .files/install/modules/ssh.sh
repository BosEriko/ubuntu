#!/bin/bash

# Generate SSH Key
ssh-keygen -t rsa -b 4096 -C "boseriko@duck.com" -f ~/.ssh/id_rsa -N ""

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
