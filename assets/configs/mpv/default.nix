{ config, ... }:
{
  xdg.configFile."mpv" = {
    source = ./mpv;
    recursive = true;
    force = true;
  };
}