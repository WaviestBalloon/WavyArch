echo "Installing git and base-devel"
pacman -S --needed git base-devel --noconfirm

echo "Installing paru"
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

echo "Allowing and enabling multilib for pacman"
cp /etc/pacman.conf /etc/pacman.conf.bkg
mline=$(grep -n "\\[multilib\\]" /etc/pacman.conf | cut -d: -f1)
rline=$(($mline + 1))
sed -i ''$mline's|#\[multilib\]|\[multilib\]|g' /etc/pacman.conf
sed -i ''$rline's|#Include = /etc/pacman.d/mirrorlist|Include = /etc/pacman.d/mirrorlist|g' /etc/pacman.conf

echo "Installing applications"
paru -S gwenview krita gparted vlc filelight isoimagewriter visual-studio-code-bin firefox flameshot steam blackbox-terminal 

echo "Done!"
