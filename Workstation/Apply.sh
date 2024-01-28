#!/bin/sh
source .env
# This refreshes in use config

# NixConf
sudo rm /etc/nixos/configuration.nix
sudo cp $HOME/Projects/Nix/Workstation/configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
