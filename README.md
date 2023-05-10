# 🌊 WavyArch
Bash script I use after a fresh installation of Arch to setup my applications and environment.

> **Note**:
> This script has been configured to work with the `linux-zen` kernel and not the normal Linux kernel! Although you can use it without the Zen kernel, some applications might not work.

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
- [gparted](https://archlinux.org/packages/extra/x86_64/gparted/) - Modifying and applying drive partition changes
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
- Node.js Verion Manager - https://github.com/nvm-sh/nvm
