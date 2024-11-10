#!/bin/bash

repo_root=$(git rev-parse --show-toplevel)
APP_DIR="$repo_root/apps/$1"
app="$1"
path="$2"

if [[ "$1" == "inventory"]]; then
  touch "$repo_root/../Example-Voting-app/apps/$1/test.txt"
  echo "testing" >> "$repo_root/../Example-Voting-app/apps/$1/test.txt"
elif [[ "$1" = "ignore" ]]; then
  echo "No changes"
fi
