{ inputs, config, ... }:

{
  imports = [
    ./network
    ./nh
    ./audio
    ./compilers
    ./ssClipboard
    ./grub
    ./fonts
    ./hardware
    ./flatpak
  ];
}
