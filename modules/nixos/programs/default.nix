{ config, ... }:
{
  imports = [
    ./steam
    ./appimages
    ./dependencies
    ./flatpak
    ./cli
  ];
}
