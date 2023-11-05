#!/bin/bash

#bashrc="~/.bashrc"
bashrc="~/Desktop/bashrk"

# update mirrirs and system
sudo apt update && sudo apt upgrade -y

# ####### Basic package installs 
# sudo apt install flatpak
echo "install krita, flatseal, discord, upscaler"
sudo flatpak install org.kde.krita
sudo flatpak install com.github.tchx84.Flatseal
sudo flatpak install com.discordapp.Discord
sudo flatpak install io.gitlab.theevilskeleton.Upscaler

echo "install botpop, nvim"
sudo snap install btop
#sudo snap install neovim

echo "install htop, lm-sensors"
sudo apt install htop
sudo apt install lm-sensors


######## Appended alies to $bashrc #########
# Update alias
echo "# Custom update alias_updater\n" >> $bashrc
echo "alias upd=\"sudo apt update && sudo apt upgrade && flatpak update\n\"" >> $bashrc
echo "" >> $bashrc
echo "\n" >> $bashrc

# install temps package and alies my most used command from it
echo "# Custom tempature sensors\n" >> $bashrc
echo "alias temps=\"watch sensors\n\"" >> $bashrc

# Vim config alias
echo "\n" >> $bashrc
echo "alias vimcon=\"vim ~/.vim/vimrc\n\"" >> $bashrc
echo "alias govimcon=\"cd ~/.vim/\n\"" >> $bashrc
echo "alias nimcon=\"vim ~/.config/nvim\n\"" >> $bashrc
echo "alias gonimcon=\"cd ~/.config/nvim\n\"" >> $bashrc
echo "alias nimcon=\"vim ~/.config/nvim\n\"" >> $bashrc

