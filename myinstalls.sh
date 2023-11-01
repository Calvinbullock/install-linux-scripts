#!/bin/bash

# update mirrirs and system
sudo apt update && sudo apt upgrade -y

######## Basic package installs 
# sudo apt install flatpak
# sudo flatpak install krita
sudo apt install htop
sudo snap install btop
sudo apt install upscaler
sudo apt install neovim


######## Appended alies to .bashrc #########
# Update alias
echo "# Custom update alias_updater" >> .bashrc
echo "alias upd=\"sudo apt update && sudo apt upgrade && flatpak update\n\"" >> .bashrc
echo "" >> .bashrc
echo "\n" >> .bashrc

# install temps package and alies my most used command from it
sudo apt install lm-sensors
echo "# Custom tempature sensors\n" >> .bashrc
echo "alias temps=\"watch sensors\n\"" >> .bashrc

# Vim config alias
echo "\n" >> .bashrc
echo "alias vimcon=\"vim ~/.vim/vimrc\n\"" >> .bashrc
echo "alias govimcon=\"cd ~/.vim/\n\"" >> .bashrc
echo "alias nimcon=\"vim ~/.config/nvim\n\"" >> .bashrc
echo "alias gonimcon=\"cd ~/.config/nvim\n\"" >> .bashrc
echo "alias nimcon=\"vim ~/.config/nvim\n\"" >> .bashrc

