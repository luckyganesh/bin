#! /bin/zsh

git clone https://github.com/luckyganesh/bin.git ~/bin
git clone https://github.com/luckyganesh/dotfiles.git ~/dotfiles

rm ~/.gitconfig ~/.zshrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
