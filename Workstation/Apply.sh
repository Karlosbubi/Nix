#!/bin/bash

# NixConf
sudo rm /etc/nixos/configuration.nix
sudo cp ./configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
