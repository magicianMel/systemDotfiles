{ config, ... }:
{
  xdg.configFile."quickshell" = {
    source = ./quickshell;
    recursive = true;
    force = true;
  };
}