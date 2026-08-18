{ inputs, config, ... }:

{
  imports = [
    ./network
    ./secrets
    ./bluetooth
    ./nh
    ./audio
    ./compilers
    ./ssClipboard
    ./grub
    ./hardware
    ./flatpak
  ];
}
