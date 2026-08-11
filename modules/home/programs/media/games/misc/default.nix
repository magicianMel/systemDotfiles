{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    mangohud
    r2modman
  ];
}
