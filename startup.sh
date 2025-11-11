#!/bin/zsh

echo 'eval "$(starship init zsh)"' > ~/.zshrc
echo 'fastfetch' >> ~/.zshrc
source ~/.zshrc

gotty -w zsh
