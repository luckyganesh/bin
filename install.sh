#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -nv true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Ask for name to use in oh my zsh
echo "\n\nEnter name to display in prompt"
read name
while [ -z "$name" ]
do
  read name
done


# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


#Make sure that your sudo config is yours.
sudo chown -R saiganeb .config

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

#upgrade vim
brew upgrade vim

#installing zsh and zsh-completions
brew install zsh zsh-completions

#installing oh-my-zsh
echo $name | sh -c "$(curl -fsSL https://raw.githubusercontent.com/nrjais/oh-my-zsh/master/tools/install.sh)"

#installing google-chrome
echo "Installing chrome";
brew cask install google-chrome

#installing iterm2
echo "Installing iterm2";
brew cask install iterm2

#installing vlc
echo "Installing vlc";
brew cask install vlc

#installing vscode
echo "Installing visual-studio-code";
brew cask install visual-studio-code

#installing slack
echo "Installing slack"
brew cask install slack

#installing core utils
echo "installing tig"
brew install tig

echo "installing git" 
brew install git

echo "installing tree"
brew install tree

echo "installing bat" 
brew install bat

echo "installing node"
brew install node

echo "installing watch"; 
brew install watch

echo "installing ack"
brew install ack

#installing node utils
sudo npm install -g nyc
sudo npm install -g readline-sync
sudo npm install -g mocha
sudo npm install -g prettier
sudo npm install -g chalk

echo "Installing zsh-autoSuggestions";
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions;
git config --global user.name "Sai Ganesh";
git config --global user.email "44020019+luckyganesh@users.noreply.github.com";

# installing vim packages
mkdir -p .vim/pack/plugins/start;
git clone https://github.com/sickill/vim-monokai.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/vim-airline/vim-airline.git
mv vim-airline vim-gitgutter nerdtree vim-monokai .vim/pack/plugins/start