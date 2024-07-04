#!/usr/bin/env sh

# Generate SSH Key
ssh-keygen -t rsa -b 4096 -C "bos.eriko@gmail.com"
echo "Installing: SSH Key has been generated."

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

echo "Installation complete: SSH keys have been added to known_hosts."
