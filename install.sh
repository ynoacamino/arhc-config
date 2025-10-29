# Update
sudo pacman -Syu --noconfirm

# Brave
curl -fsS https://dl.brave.com/install.sh | sh

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install --lts
nvm use --lts

# Zed
curl -f https://zed.dev/install.sh | sh

# Docker
sudo pacman -S --noconfirm docker

# ZSH
sudo pacman -S --noconfirm zsh
sudo chsh -s /usr/bin/zsh $USER

# Warp
# https://app.warp.dev/get_warp?package=pacman
sudo pacman -U --noconfirm ~/Downloads/warp-terminal-*.tar.zst

# Java
sudo pacman -Syu --noconfirm jdk-openjdk

# Flatpak
sudo pacman -S --noconfirm flatpak

# Go
sudo pacman -S --noconfirm go

# vscode
yay -S --noconfirm visual-studio-code-bin

sudo pacman -Syu --noconfirm kubectl

sudo pacman -S --noconfirm helm
