#!/bin/bash

#########################################################################
#                                                                       #
# ZshDefaultShell.sh - Install and Make default Shell (zsh)             #
#                                                                       #
# Autor: Augusto Scher - augustoscher@gmail.com                         #
# Data Criação: 19/07/2019                                              #
#                                                                       #
# Descrição: Install zsh and make it the default shell                  #
#                                                                       #
# Exemplo de uso: ./ZshDefaultShell.sh                                  #
#                                                                       #
#########################################################################

clear
echo "Installing Zsh shell"
echo ""
sudo apt install zsh
echo ""
echo "Zsh installed vesion"
zsh --version
echo ""
echo "Setting Zsh as default shell"
chsh -s $(which zsh)
echo ""
echo "Done!"
echo "You should restart your OS"


