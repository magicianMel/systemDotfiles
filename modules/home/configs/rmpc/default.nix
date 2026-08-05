{ config, lib, ... }:
{
  xdg.configFile."rmpc" = {
    source = ./rmpc;
    recursive = true;
    force = true;
  };
}