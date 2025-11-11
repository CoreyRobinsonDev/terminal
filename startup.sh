#!/bin/zsh

echo 'eval "$(starship init zsh)"' > ~/.zshrc
source ~/.zshrc

gotty -w zsh
