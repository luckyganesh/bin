#! /bin/zsh

touch ~/bin/data
vim ~/bin/data
cat ~/bin/data | cat >> ~/.zshrc
rm ~/bin/data
source ~/.zshrc
