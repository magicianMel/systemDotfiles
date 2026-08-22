{ config, ... }:
{
  imports = [
    ./steam
    ./dependencies
    ./flatpak
    ./cli
  ];
}
