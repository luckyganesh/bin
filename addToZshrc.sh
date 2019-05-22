#! /bin/zsh

touch ~/bin/data.sh
vim ~/bin/data.sh
cat ~/bin/data.sh | cat >> ~/.zshrc
rm ~/bin/data.sh
source ~/.zshrc
