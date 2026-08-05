{ inputs, config, ... }:

{
  imports = [
    ./network
    ./audio
    ./screenshotsClipboard
    ./grub
    ./quickshell
    ./fonts
    ./hardware
    ./fileManagers
    ./flatpak
  ];
}
