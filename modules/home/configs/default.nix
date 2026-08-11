{ config, pkgs, ... }:
{
  imports = [
    ./hyprland
    ./kitty
    ./nvim
    ./mpv
    ./quickshell
    ./rmpc
    ./rofi
  ];
}
