#!/bin/bash
commands=(
  fzf-commit
  fzf-delete
  fzf-time
)
shortcuts=(
  gfzfc
  gfzfd
  gfzft
)

# remove git-fzf
rm -rf "$HOME/bin/git-fzf"

# remove env and alias
sed -i '/git-fzf/d' ~/.zshrc

for command in "${commands[@]}"; do
  sed -i "/git $command/d" ~/.zshrc
done
for shortcut in "${shortcuts[@]}"; do
  sed -i "/$shortcut/d" ~/.zshrc
done
