{ inputs, config, ... }:

{
  imports = [
    ./network
    ./secrets
    ./bluetooth
    ./ddwManagers
    ./audio
    ./ssClipboard
    ./hardware
  ];
}
