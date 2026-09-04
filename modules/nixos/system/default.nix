{ inputs, config, ... }:

{
  imports = [
    ./network
    ./secrets
    ./bluetooth
    ./ddwManagers
    ./nh
    ./audio
    ./ssClipboard
    ./hardware
  ];
}
