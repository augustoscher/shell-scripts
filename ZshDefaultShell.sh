#!/bin/bash

#########################################################################
#                                                                       #
# ZshDefaultShell.sh - Install and Make default Shell (zsh)             #
#                                                                       #
# Autor: Augusto Scher - augustoscher@gmail.com                         #
# Data Criação: 19/07/2019                                              #
#                                                                       #
# Descrição: Install zsh, oh-my-zsh and make it default shell           #
#                                                                       #
# Exemplo de uso: ./ZshDefaultShell.sh                                  #
#                                                                       #
#########################################################################

clear
echo "Installing Zsh shell"
sudo apt install zsh

echo ""
echo "Zsh installed vesion"
zsh --version

echo ""
echo "Setting Zsh as default shell"
chsh -s $(which zsh)

echo ""
echo "Installing oh-my-zsh extension"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo ""
echo "Done!"
echo "You should restart your OS"


