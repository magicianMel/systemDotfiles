{ config, pkgs, ... }:
{
  imports = [
    ./hyprland
    ./kitty
    ./mpv
    ./quickshell
    ./rmpc
    ./rofi
  ];
}