{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    yazi
    p7zip
  ];
}
