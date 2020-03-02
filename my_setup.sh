#! /bin/zsh

git clone https://github.com/luckyganesh/bin.git ~/bin
git clone https://github.com/luckyganesh/dotfiles.git ~/dotfiles
git clone https://github.com/luckyganesh/mac-setup.git

rm -f ~/.gitconfig ~/.zshrc ~/.vimrc
mkdir ~/.config/alacritty
mkdir ~/.lein
cd ~/dotfiles
ln -s ~/gitconfig ~/.gitconfig
ln -s ~/vimrc ~/.vimrc
ln -s ~/zshrc ~/.zshrc
ln -s ~/tmux.conf ~/.tmux.conf
ln -s ~/alacritty.yml ~/.config/alacritty/
ln -s ~/profiles.clj ~/.lein
