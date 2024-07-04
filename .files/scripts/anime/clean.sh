#!/usr/bin/env sh

# Source environment variables
source ~/env.z.sh

# Define the directory containing anime files
anime_directory="$STORAGE/Anime"

# Loop through each .mkv file in the directory
for anime in "$anime_directory"/*.mkv; do
  if [ -f "$anime" ]; then
    # Extract the base name without the .mkv extension and clean it up
    new_name=$(
        basename "$anime" .mkv |
        sed 's/\[[^]]*\]//g' |                                  # Remove text inside square brackets
        sed 's/([^)]*)//g' |                                    # Remove text inside parentheses
        sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' |     # Trim leading and trailing whitespace
        awk '{$1=$1};1'                                         # Remove extra spaces
    )

    # Check if the new_name already exists in the directory
    if [ -f "${anime_directory}/${new_name}.mkv" ]; then
      echo "Skipped: ${anime} (already exists as ${anime_directory}/${new_name}.mkv)"
    else
      # Rename the file with the cleaned-up name
      mv "$anime" "${anime_directory}/${new_name}.mkv"
      echo "Renamed: $anime to ${anime_directory}/${new_name}.mkv"
    fi
  fi
done

echo "File renaming complete."

