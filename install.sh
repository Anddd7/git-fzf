#!/bin/sh

remote_url="https://raw.githubusercontent.com/Anddd7/git-fzf/main"
local_folder="$HOME/bin/git-fzf"

mkdir -p "$local_folder"

curl -sSL "$remote_url/git-fzf-commit" -o "$local_folder/git-fzf-commit"
curl -sSL "$remote_url/git-fzf-delete" -o "$local_folder/git-fzf-delete"

chmod +x "$local_folder/git-fzf-commit"
chmod +x "$local_folder/git-fzf-delete"

# inject to zshrc
if grep -q 'export PATH="$HOME/bin/git-fzf:$PATH"' ~/.zshrc; then
  echo "Upgrade git-fzf successfully"
else
  echo 'export PATH="$HOME/bin/git-fzf:$PATH"' >>~/.zshrc
  echo 'alias gfzfc="git fzf-commit"' >>~/.zshrc
  echo 'alias gfzfd="git fzf-delete"' >>~/.zshrc
fi
