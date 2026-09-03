{ config, pkgs, ... }:
{
  imports = [
    ./hyprland
    ./kitty
    ./nvim
    ./niri
    ./mpv
    ./quickshell
    ./rmpc
    ./rofi
  ];
}
