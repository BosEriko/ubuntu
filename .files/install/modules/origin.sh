#!/bin/bash

# Function to set Git remote origins
set_origins() {
  local directory="$1"
  local username="$2"

  (
    cd "$directory"
    git remote rm origin
    git remote add origin git@github.com:"$username".git
    git remote add github git@github.com:"$username".git
    git remote add gitlab git@gitlab.com:"$username".git
    git remote add bitbucket git@bitbucket.org:"$username".git
    git remote set-url --add --push origin git@github.com:"$username".git
    git remote set-url --add --push origin git@gitlab.com:"$username".git
    git remote set-url --add --push origin git@bitbucket.org:"$username".git
  )
}

# Define directory and repository path
repositories=(
  "~ BosEriko/ubuntu"
  "~/.files/zsh BosEriko/zsh"
)

# Loop through repositories and update origins
for repo in "${repositories[@]}"; do
  set_origins $repo
done

echo "Installation complete: Remote origins have been updated."
