#!/bin/sh
source ./.env
# This refreshes in use config

# Desktops
sudo rm -rf /etc/nixos/Desktop/*
sudo mkdir -p /etc/nixos/Desktop
sudo cp $HOME/Projects/Nix/Workstation/Desktop/* /etc/nixos/Desktop/

# Base NixConf ans Switch
sudo rm /etc/nixos/configuration.nix
sudo cp $HOME/Projects/Nix/Workstation/configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
