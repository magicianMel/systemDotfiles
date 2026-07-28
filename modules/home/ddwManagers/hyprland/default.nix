{ config, lib, pkgs, ... }:
{
  home.file.".config/hypr".source = ./../../configs/hyprland/.config/hypr;
  home.file.".config/quickshell".source = ./../../configs/quickshell/.config/quickshell;
  home.file.".config/rofi".source = ./../../configs/rofi/.config/rofi;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}