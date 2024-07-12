#!/bin/bash

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
