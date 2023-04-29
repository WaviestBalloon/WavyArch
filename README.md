# 🌊 WavyArch
Bash script I use after a fresh installation of Arch to setup my applications and environment.

> **Note**:
> This script has been configured to work with the `linux-zen` kernel and not the normal Linux kernel! Although you can use it without the Zen kernel, some applications like Virtualbox might not work.

> **Note**:
> In some instances, Virtualbox will not work out of the box when ran.<br>
> If you encounter issues with Virtualbox being unable to find kernel modules, make sure you have `virtualbox-host-dkms` (`virtualbox-host-modules-arch` for the normal Linux kernel) installed and run `sudo /sbin/vboxreload` to reload.

### Usage

```bash
git clone https://github.com/WaviestBalloon/WavyArch.git
cd WavyArch
chmod +x ./wavyarch.sh
./wavyarch.sh
```
> **Warning**: 
> Do not run this script as `sudo`! It will prompt you when it requires sudo permissions.
