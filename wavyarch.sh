#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Installing git, base-devel and rustup"
sudo pacman -S --needed git base-devel rustup --noconfirm
rustup default stable

echo "Installing paru"
cd ~
rm -rf paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd SCRIPT_DIR

echo "Allowing and enabling multilib for pacman"
sudo cp /etc/pacman.conf /etc/pacman.conf.bkg
mline=$(grep -n "\\[multilib\\]" /etc/pacman.conf | cut -d: -f1)
rline=$(($mline + 1))
sudo sed -i ''$mline's|#\[multilib\]|\[multilib\]|g' /etc/pacman.conf
sudo sed -i ''$rline's|#Include = /etc/pacman.d/mirrorlist|Include = /etc/pacman.d/mirrorlist|g' /etc/pacman.conf

sudo pacman -Syu --noconfirm

echo "Installing applications"
paru -S gwenview krita gparted vlc filelight isoimagewriter visual-studio-code-bin firefox flameshot steam blackbox-terminal zsh ffmpeg obs-studio discord --noconfirm

echo "Setting up zsh"
cp ~/.zshrc ~/.zshrc.bkg
cp zshrc ~/.zshrc

sudo chsh -s $(which zsh)

echo "Done!"
echo "Logging out..."
logout
