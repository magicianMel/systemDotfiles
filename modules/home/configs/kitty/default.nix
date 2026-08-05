{ config, pkgs, ... }:
{
  xdg.configFile."kitty" = {
    source = ./kitty;
    recursive = true;
    force = true;
  };
}