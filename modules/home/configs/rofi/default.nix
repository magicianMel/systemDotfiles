{ config, lib, ... }:
{
  xdg.configFile."rofi" = {
    source = ./rofi;
    recursive = true;
    force = true;
  };
}