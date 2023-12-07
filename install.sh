#!/bin/sh

mdkir -p ~/git-fzf

curl -sSL "https://raw.githubusercontent.com/Anddd7/git-fzf/main/git-fzf-commit.sh" >~/git-fzf/git-fzf-commit.sh

echo 'PATH="$HOME/git-fzf:$PATH"' >>~/.zshrc

echo 'alias gfzfc="git fzf-commit"' >>~/.zshrc
