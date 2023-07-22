# 🌊 WavyArch
### I have just realised how awful my bash scripting is, I will probably refactor in the future
Bash script I use after a fresh installation of Arch to setup my environment and install applications.

> **Note**:
> This script has been configured to work with the `linux-zen` kernel. You may encounter issues 

### Usage

```bash
git clone https://github.com/WaviestBalloon/WavyArch.git
cd WavyArch
chmod +x ./wavyarch.sh
./wavyarch.sh
```
> **Warning**: 
> Do not run this script as **sudo**! It will prompt you when it requires sudo permissions.

### Software that will be installed

- [gwenview](https://archlinux.org/packages/extra/x86_64/gwenview/) - Viewing pictures, gifs and other image formats
- [krita](https://archlinux.org/packages/extra/x86_64/krita/) - Drawing art and editing image formats
- [vlc](https://archlinux.org/packages/extra/x86_64/vlc/) - Playing videos and CD/DVDs
- [gnome-disk-utility](https://archlinux.org/packages/extra/x86_64/gnome-disk-utility/) - Modifying and applying drive partition changes
- [filelight](https://archlinux.org/packages/extra/x86_64/filelight/) - Disk usage information (Essentially WinDirStat but for Linux)
- [isoimagewriter](https://aur.archlinux.org/packages/isoimagewriter) - Writing ISO images to USB drives to make them bootable (Essentially a dumbed-down version of Rufus)
- [visual-studio-code-bin](https://aur.archlinux.org/packages/visual-studio-code-bin) - Visual Studio Code binary for writing code (Also see [the open-source versions](https://wiki.archlinux.org/title/Visual_Studio_Code))
- [firefox](https://archlinux.org/packages/extra/x86_64/firefox/) - Fox, which is also a web browser
- [flameshot](https://archlinux.org/packages/community/x86_64/flameshot/) - Feature-rich screenshot tool with tons of editing features
- [steam](https://archlinux.org/packages/multilib/x86_64/steam/) - Game distributor (Not Epic Games, thankfully)
- [blackbox-terminal](https://aur.archlinux.org/packages/blackbox-terminal) - A very sleek and customisable terminal
- [ffmpeg](https://archlinux.org/packages/extra/x86_64/ffmpeg/) - Useful CLI tool to modify videos and to convert media (E.g. `ffmpeg -i input.mov output.mp4`)
- [obs-studio](https://archlinux.org/packages/community/x86_64/obs-studio/) - Popular, open-source screen recorder/boardcaster
- [discord](https://archlinux.org/packages/community/x86_64/discord/) - Messaging platform for gaming communities, mostly wide-spread now
- [xorg-kill](https://archlinux.org/packages/extra/x86_64/xorg-xkill/) - CLI tool to kill any process/window you click on
- [bind](https://archlinux.org/packages/extra/x86_64/bind/) - Useful CLI tool for DNS debugging
- [zsh](https://archlinux.org/packages/extra/x86_64/zsh/) - Shell customiser
- [ark](https://archlinux.org/packages/extra/x86_64/ark/) - UI archive tool to unzip and zip files
- [wine](https://archlinux.org/packages/multilib/x86_64/wine/) - Compatibility layer for Windows applications and executable (Not a emulator)
- **+** *Wine tools/dependencies*
- [qemu-desktop](https://archlinux.org/packages/extra/x86_64/qemu-desktop/) - Enables you to run virtual machines with little overhead
- [virt-manager](https://archlinux.org/packages/community/any/virt-manager/) - Virtual machine manager UI for QEMU
- **+** *qemu tools/dependencies*
- [unrar](https://archlinux.org/packages/extra/x86_64/unrar/) - Allows you to view and unextract `.rar` archives, even via Ark
- [kdenlive](https://archlinux.org/packages/extra/x86_64/kdenlive/) - A video editor with hardware acceleration by KDE
- Node.js Verion Manager - https://github.com/nvm-sh/nvm
- Oh My ZSH - https://ohmyz.sh/
- pnpm - https://pnpm.io/ - Basically, better NPM
