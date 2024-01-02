#!/bin/bash

# variable declaration
bashrc="~/.bashrc"

# update mirrirs and system
sudo apt update && sudo apt upgrade -y

# ####### Basic package installs 
# sudo apt install flatpak
echo "install krita, flatseal, discord, upscaler"
sudo flatpak install org.kde.krita
sudo flatpak install com.github.tchx84.Flatseal
# sudo flatpak install com.discordapp.Discord
sudo flatpak install io.gitlab.theevilskeleton.Upscaler

# echo "install nvim"
# sudo snap install neovim

echo "install htop, lm-sensors, btop"
sudo apt install htop
sudo apt install btop
sudo apt install lm-sensors


######## Appended alies to $bashrc #########
# Update alias
echo "" >> $bashrc
echo "# Update alias" >> $bashrc
echo "alias upd=\"sudo apt update && sudo apt upgrade && flatpak update\"" >> $bashrc
echo "" >> $bashrc

# install temps package and alies my most used command from it
echo "# Custom tempature sensors" >> $bashrc
echo "alias temps=\"watch sensors\"" >> $bashrc

# Vim config alias
echo "" >> $bashrc
echo "alias vimc=\"vim ~/.vim/vimrc\"" >> $bashrc
echo "alias gvimc=\"cd ~/.vim/\"" >> $bashrc
echo "alias nimc=\"vim ~/.config/nvim\"" >> $bashrc
echo "alias gnimc=\"cd ~/.config/nvim\"" >> $bashrc
echo "alias nimc=\"vim ~/.config/nvim\"" >> $bashrc

