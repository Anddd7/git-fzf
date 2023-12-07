#!/bin/sh

mkdir -p ~/.git-fzf

curl -sSL "https://raw.githubusercontent.com/Anddd7/git-fzf/main/git-fzf-commit" >~/.git-fzf/git-fzf-commit.sh

echo 'PATH="$HOME/git-fzf:$PATH"' >>~/.zshrc

echo 'alias gfzfc="git fzf-commit"' >>~/.zshrc
