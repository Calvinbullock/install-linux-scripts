#!/bin/bash

# update mirrirs and system
sudo apt update && sudo apt upgrade -y

######## Basic package installs 
# sudo apt install flatpak
# sudo flatpak install krita
# sudo apt install btop
sudo apt install neovim

######## Appended alies to .bashrc #########
# Update alias
echo "# Custom update alias_updater" >> .bashrc
echo "alias upd=\"sudo apt update && sudo apt upgrade && flatpak update\"" >> .bashrc
echo "" >> .bashrc

# install temps package and alies my most used command from it
sudo apt install lm-sensors
echo "# Custom tempature sensors" >> .bashrc
echo "alias temps=\"watch sensors" >> .bashrc

