{ inputs, config, ... }:

{
  imports = [
    ./network
    ./audio
    ./compilers
    ./ssClipboard
    ./grub
    ./fonts
    ./hardware
    ./flatpak
  ];
}
