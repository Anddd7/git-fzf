#!/bin/sh

# remove git-fzf
rm -rf "$HOME/bin/git-fzf"

# remove env and alias
sed -i '/git-fzf/d' ~/.zshrc
sed -i '/gfzfc/d' ~/.zshrc
