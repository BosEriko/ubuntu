#!/usr/bin/env sh

# Function to set Git remote origins
set_origins() {
  local directory="$1"
  local username="$2"

  (
    cd "$directory" &&
    git remote rm origin &&
    git remote add origin git@github.com:"$username".git &&
    git remote add github git@github.com:"$username".git &&
    git remote add gitlab git@gitlab.com:"$username".git &&
    git remote add bitbucket git@bitbucket.org:"$username".git &&
    git remote set-url --add --push origin git@github.com:"$username".git &&
    git remote set-url --add --push origin git@gitlab.com:"$username".git &&
    git remote set-url --add --push origin git@bitbucket.org:"$username".git
  )
}

# Define repositories and their respective usernames
repositories=(
  "~ BosEriko/ubuntu"
  "~/.files/zsh BosEriko/zsh"
  "$STORAGE/Password BosEriko/password"
  "$STORAGE/Obsidian BosEriko/obsidian"
  "$STORAGE/Obsidian/personal BosEriko/obsidian-personal"
  "$STORAGE/Obsidian/games BosEriko/obsidian-games"
  "$STORAGE/Obsidian/professional BosEriko/obsidian-professional"
  "$STORAGE/Obsidian/til BosEriko/obsidian-til"
  "$STORAGE/Obsidian/morning-ritual BosEriko/obsidian-morning-ritual"
  "$STORAGE/Obsidian/daily-journal BosEriko/obsidian-daily-journal"
  "$STORAGE/Obsidian/blogs BosEriko/obsidian-blogs"
  "$STORAGE/Obsidian/dreams BosEriko/obsidian-dreams"
  "$STORAGE/Obsidian/twisuandbosu BosEriko/obsidian-twisuandbosu"
)

# Loop through repositories and update origins
for repo in "${repositories[@]}"; do
  set_origins $repo
done

echo "Installation complete: Remote origins have been updated."
