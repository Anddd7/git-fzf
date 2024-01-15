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
if grep -q "export PATH=\"$HOME/bin/git-fzf:\$PATH\"" ~/.zshrc; then
  echo "Upgrade git-fzf successfully"
else
  echo "export PATH=\"$HOME/bin/git-fzf:\$PATH\"" >>~/.zshrc
  # "alias $shortcut=\"git fzf-$command\""
  for shortcut in "${shortcuts[@]}"; do
    echo "alias $shortcut=\"git fzf-${commands[$i]}\"" >>~/.zshrc
  done
fi
