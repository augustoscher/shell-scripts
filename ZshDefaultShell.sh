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
echo "Installing ZSH Shell ======I"
echo ""
sudo apt install zsh
echo ""
echo "ZSH Shell install finished - vesion: "
zsh --version
echo ""
echo "Set ZSH as default Shell"
chsh -s $(which zsh)
echo ""
echo "Done!"


