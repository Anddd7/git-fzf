#!/bin/bash

shortcuts=(
  gfzfc
  gfzfd
  gfzft
)

# remove git-fzf
rm -rf "$HOME/bin/git-fzf"

# remove env and alias
sed -i '/git-fzf/d' ~/.zshrc

for shortcut in "${shortcuts[@]}"; do
  sed -i "/$shortcut/d" ~/.zshrc
done
