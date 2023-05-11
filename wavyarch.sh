#!/bin/bash
#https://github.com/WaviestBalloon/WavyArch
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Checking for updates"
git pull --force

if [[ $EUID -eq 0 ]]; then
	echo "This script is restricted to run as a non-root user only. Do not run as root or sudo."
	exit 1
else
	echo "Script running as user, you will be prompted when necessary for sudo permissions"
fi

echo "=== START ==="

echo "Installing git, base-devel, rustup and linux-zen-headers"
sudo pacman -S --needed git base-devel rustup linux-zen-headers --noconfirm

echo "Installing paru"

if ! [ -x "$(command -v git)" ]; then
	cd ~
	rm -rf paru
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si
	cd SCRIPT_DIR
else
	pnt "[\033[36m>\033[39m] Paru seems to be installed, skipping!"
fi

echo "Allowing and enabling multilib for pacman"
sudo cp /etc/pacman.conf /etc/pacman.conf.bkg
mline=$(grep -n "\\[multilib\\]" /etc/pacman.conf | cut -d: -f1)
rline=$(($mline + 1))
sudo sed -i ''$mline's|#\[multilib\]|\[multilib\]|g' /etc/pacman.conf
sudo sed -i ''$rline's|#Include = /etc/pacman.d/mirrorlist|Include = /etc/pacman.d/mirrorlist|g' /etc/pacman.conf

echo "Refreshing Pacman to apply changes"
sudo pacman -Syu --noconfirm

echo "Installing deps"
paru -S libvirt dnsmasq iptables-nft

echo "Installing applications"
paru -S gwenview krita gnome-disk-utility vlc filelight isoimagewriter visual-studio-code-bin firefox flameshot steam blackbox-terminal ffmpeg obs-studio discord xorg-xkill bind zsh ark wine virt-manager qemu-desktop --noconfirm

echo "Enabling libvertd on startup"
sudo systemctl enable libvertd

echo "Setting up zsh"
echo "Downloading Oh-My-ZSH installer script"
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x ./install.sh
./install.sh --unattended
echo "Copying zsh config file"
cp ~/.zshrc ~/.zshrc.bkg
cp zshrc ~/.zshrc
echo "Changing shells"
sudo chsh -s $(which zsh)

echo "Deleting installer file"
rm install.sh

echo "Installing Node Version Manager"
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh
chmod +x ./install.sh
./install.sh
echo "Exporting NVM into current shell session"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "Deleting installer file"
rm install.sh

echo "Installing LTS Node.js"
nvm install --lts
echo "Setting LTS as default Node.js version"
nvm use --lts

echo "Installing extra fonts"
paru -S ttf-twemoji-color

echo "Done! All finished"
echo "It is highly recommended for you to restart, would you like to reboot right now?"
read -p "? > " CHOICE
if [ "$CHOICE" = "y" ]; then
	echo "Rebooting now"
	reboot now
else
	echo "Alright, exiting now"
	exit 0
fi
