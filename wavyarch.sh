#!/bin/bash
#https://github.com/WaviestBalloon/WavyArch
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ $EUID -eq 0 ]]; then
  echo "This script is restricted to run as a non-root user only. Do not run as root or sudo."
  exit 1
fi

echo "Installing git, base-devel, rustup and linux-zen-headers"
sudo pacman -S --needed git base-devel rustup linux-zen-headers --noconfirm
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

echo "Installing deps"
paru -S virtualbox-host-dkms --noconfirm
# Run `sudo /sbin/vboxreload` if you are having issues with virtualbox not detecting kernel drivers

echo "Installing applications"
paru -S gwenview krita gparted vlc filelight isoimagewriter visual-studio-code-bin firefox flameshot steam blackbox-terminal ffmpeg obs-studio discord virtualbox xorg-xkill bind zsh --noconfirm

echo "Setting up zsh"
echo "Downloading Oh-My-ZSH installer script"
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x ./install.sh
./install.sh --unattended
echo "Copying zsh config file"
cp ~/.zshrc ~/.zshrc.bkg
cp zshrc ~/.zshrc

sudo chsh -s $(which zsh)

echo "Installing Node Version Manager"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "Installing LTS Node.js"
nvm install --lts
nvm use --lts

echo "Done!"
echo "NOTE ==========================================="
echo "You should restart or logout of your system now"
