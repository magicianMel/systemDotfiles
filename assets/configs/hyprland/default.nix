{ config, lib, pkgs, ... }:
{
  xdg.configFile."hypr" = {
    source = ./hypr;
    recursive = true;
    force = true;
  };
}
