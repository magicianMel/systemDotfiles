{ inputs, config, ... }:

{
  imports = [
    ./network
    ./fonts
    ./secrets
    ./bluetooth
    ./ddwManagers
    ./audio
    ./ssClipboard
    ./hardware
  ];
}
