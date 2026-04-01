#!/usr/bin/bash

# Initial Update
sudo zypper refresh
sudo zypper dup -yl
sudo zypper up -yl

# Install basic tools
sudo zypper in -yl git curl wget libicu

# Repos
## Packman
sudo zypper ar -cfp 98 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/' packman
## VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" |sudo tee /etc/zypp/repos.d/vscode.repo > /dev/null
## .NET sdk
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
wget https://packages.microsoft.com/config/opensuse/15/prod.repo
sudo mv prod.repo /etc/zypp/repos.d/microsoft-prod.repo
sudo chown root:root /etc/zypp/repos.d/microsoft-prod.repo
## Prism Launcher
sudo zypper addrepo https://download.opensuse.org/repositories/home:getchoo/openSUSE_Tumbleweed/home:getchoo.repo

# Update with repos
sudo zypper refresh
sudo zypper dup -yl
sudo zypper up -yl

# Install
## WiFi
sudo zypper in -yl broadcom-wl broadcom-wl-kmp-default
## .NET
sudo zypper in -yl dotnet-sdk-9.0
## Docker
sudo zypper in -yl docker docker-compose
sudo groupadd docker
sudo usermod -aG docker kurt
## Programms
sudo zypper in -yl code alacritty steam prismlauncher
flatpak install com.discordapp.Discord
flatpak install app.zen_browser.zen
flatpak install md.obsidian.Obsidian
flatpak install com.valvesoftware.Steam 
flatpak install com.spotify.Client
## Utils
sudo zypper in -yl libgthread-2_0-0 # required for JetBrains IDEs

# Jetbrains Toolbox
wget -O $HOME/Downloads/toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.5.4.38621.tar.gz
mkdir $HOME/Downloads/toolbox
tar -xzf $HOME/Downloads/toolbox.tar.gz -C $HOME/Downloads/toolbox --strip-components 1
$HOME/Downloads/toolbox/jetbrains-toolbox

