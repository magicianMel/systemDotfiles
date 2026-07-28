{ config, lib, ... }:
{
  home.file.".config/kitty".source = ./../../configs/kitty/.config/kitty;
}