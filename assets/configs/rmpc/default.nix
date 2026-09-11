{ config, lib, ... }:
{
#  xdg.configFile."rmpc/autolyric" = {
#    source = ./rmpc/autolyric;
#    recursive = true;
#    force = true;
#  };
  programs.rmpc = {
    enable = true;
  };
}
