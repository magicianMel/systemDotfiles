{ config, lib, pkgs, ... }:
{
  home.file.".config/hypr" = {
    source = ./hypr;
    recursive = true;
    force = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}
