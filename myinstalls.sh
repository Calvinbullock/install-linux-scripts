#!/bin/bash

#bashrc="~/.bashrc"
bashrc="~/Desktop/bashrk"

# update mirrirs and system
sudo apt update && sudo apt upgrade -y

# ####### Basic package installs 
# sudo apt install flatpak
sudo flatpak install org.kde.krita
sudo flatpak unstall com.github.tchx84.Flatseal
sudo flatpak install com.discordapp.Discord
sudo flatpak install io.gitlab.theevilskeleton.Upscaler

sudo snap install btop
#sudo snap install neovim

sudo apt install htop


######## Appended alies to $bashrc #########
# Update alias
echo "# Custom update alias_updater\n" >> $bashrc
echo "alias upd=\"sudo apt update && sudo apt upgrade && flatpak update\n\"" >> $bashrc
echo "" >> $bashrc
echo "\n" >> $bashrc

# install temps package and alies my most used command from it
sudo apt install lm-sensors
echo "# Custom tempature sensors\n" >> $bashrc
echo "alias temps=\"watch sensors\n\"" >> $bashrc

# Vim config alias
echo "\n" >> $bashrc
echo "alias vimcon=\"vim ~/.vim/vimrc\n\"" >> $bashrc
echo "alias govimcon=\"cd ~/.vim/\n\"" >> $bashrc
echo "alias nimcon=\"vim ~/.config/nvim\n\"" >> $bashrc
echo "alias gonimcon=\"cd ~/.config/nvim\n\"" >> $bashrc
echo "alias nimcon=\"vim ~/.config/nvim\n\"" >> $bashrc

