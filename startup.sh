#!/bin/zsh

echo 'eval "$(starship init zsh)"' > ~/.zshrc
source ~/.zshrc

ttyd -W zsh
