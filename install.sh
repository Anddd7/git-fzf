#!/bin/bash

remote_url="https://raw.githubusercontent.com/Anddd7/git-fzf/main"
local_folder="$HOME/bin/git-fzf"

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

mkdir -p "$local_folder"

# download commands
for command in "${commands[@]}"; do
  curl -sSL "$remote_url/git-$command" -o "$local_folder/git-$command"
  chmod +x "$local_folder/git-$command"
done

# update .zshrc
if ! grep -q 'export PATH="$HOME/bin/git-fzf:$PATH"' ~/.zshrc; then
  echo 'export PATH="$HOME/bin/git-fzf:$PATH"' >>~/.zshrc
fi

for shortcut in "${shortcuts[@]}"; do
  if ! grep -q "alias $shortcut=\"git ${commands[$i]}\"" ~/.zshrc; then
    echo "alias $shortcut=\"git ${commands[$i]}\"" >>~/.zshrc
  fi
done
