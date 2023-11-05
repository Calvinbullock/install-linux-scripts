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
echo "# Custom update alias_updater" >> $bashrc
echo "alias upd=\"sudo apt update && sudo apt upgrade && flatpak update\"" >> $bashrc
echo "" >> $bashrc
echo "" >> $bashrc

# install temps package and alies my most used command from it
echo "# Custom tempature sensors\" >> $bashrc
echo "alias temps=\"watch sensors\"" >> $bashrc

# Vim config alias
echo "" >> $bashrc
echo "alias vimcon=\"vim ~/.vim/vimrc\"" >> $bashrc
echo "alias govimcon=\"cd ~/.vim/\"" >> $bashrc
echo "alias nimcon=\"vim ~/.config/nvim\"" >> $bashrc
echo "alias gonimcon=\"cd ~/.config/nvim\"" >> $bashrc
echo "alias nimcon=\"vim ~/.config/nvim\"" >> $bashrc

