#!/bin/bash

# Tested on Ubuntu 22.04

# --------------------------------
# WIP
# --------------------------------



# --------------------------------
# TODO
# --------------------------------
# exit


# --------------------------------
# MANUALY
# --------------------------------

# - Terminal colors
# - Diaporama shotwell
# -Shortcut explorer WIN + E
# - Favoris de navigateur

# - Transfer DATA folder


# --------------------------------
# CONFIG
# --------------------------------

gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 38
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.shell favorite-apps "['keepassxc_keepassxc.desktop', 'firefox_firefox.desktop', 'chromium_chromium.desktop', 'google-chrome.desktop', 'opera.desktop', 'brave_brave.desktop', 'thunderbird_thunderbird.desktop', 'notepadqq.desktop', 'gnome-system-monitor.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'code.desktop', 'terminator.desktop', 'spotify_spotify.desktop', 'ticktick_ticktick.desktop', 'caprine_caprine.desktop', 'plex-desktop_plex-desktop.desktop', 'io.freetubeapp.FreeTube.desktop', 'p3x-onenote_p3x-onenote.desktop']"

# --------------------------------
# SOFTWARES
# --------------------------------

# Update & upgrade
sudo apt update
sudo apt upgrade -y

# Flatpack (reboot required to see apps)
sudo apt install flatpak -y
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Dropbox => UPDATE !!!
cd ~/Téléchargement
wget https://linux.dropbox.com/packages/ubuntu/dropbox_2020.03.04_amd64.deb
sudo apt install ./dropbox_2020.03.04_amd64.deb -y
rm ./dropbox_2020.03.04_amd64.deb

# Virtualbox => UPDATE !!!
cd ~/Téléchargement
wget https://download.virtualbox.org/virtualbox/7.1.2/virtualbox-7.1_7.1.2-164945~Ubuntu~jammy_amd64.deb
sudo apt install ./virtualbox-7.1_7.1.2-164945~Ubuntu~jammy_amd64.deb -y
rm ./virtualbox-7.1_7.1.2-164945~Ubuntu~jammy_amd64.deb

# Ticktick => UPDATE !!!
cd ~/Téléchargement
wget https://d2atcrkye2ik4e.cloudfront.net/download/linux/linux_deb_x64/ticktick-6.0.0-amd64.deb
sudo apt install ./ticktick-6.0.0-amd64.deb -y
rm ./ticktick-6.0.0-amd64.deb

# Veracrypt
sudo add-apt-repository ppa:unit193/encryption
sudo apt-get update
sudo apt-get install veracrypt

# localsend
sudo snap install localsend

# chromium
sudo apt install chromium-browser -y

# Chrome
cd ~/Téléchargement
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb

# KeePassXC
flatpak install --user flathub org.keepassxc.KeePassXC -y

# glances
sudo apt-get install glances -y

# opera
sudo snap install opera

# Brave
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# notepadqq
sudo apt install notepadqq -y

# terminator
sudo apt-get install terminator -y

# spotify
sudo snap install spotify

# Caprine
sudo snap install caprine

# Docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# freetube
flatpak install -y flathub io.freetubeapp.FreeTube

# Syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt install -y syncthing

# Gimp 
sudo flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref -y

# Plex
flatpak install flathub tv.plex.PlexDesktop -y

# VLC
sudo snap install vlc

# VsCode
sudo apt-get install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code

code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint

code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension mhutchie.git-graph

code --install-extension meouwu.css-var-color-decorator
code --install-extension naumovs.color-highlight
code --install-extension pranaygp.vscode-css-peek

code --install-extension ms-azuretools.vscode-docker

code --install-extension ms-playwright.playwright

code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance

code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow

code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-server

code --install-extension prisma.prisma
code --install-extension qwtel.sqlite-viewer

code --install-extension ritwickdey.liveserver

code --install-extension tomoki1207.pdf

code --install-extension hediet.vscode-drawio

code --install-extension redhat.vscode-yaml
code --install-extension vitest.explorer
code --install-extension vue.volar
code --install-extension blanu.vscode-styled-jsx


# --------------------------------
# Reboot
# --------------------------------

sudo reboot