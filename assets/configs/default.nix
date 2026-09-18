{ config, pkgs, ... }:
{
  imports = [
    ./hyprland
    ./kitty
    ./noctalia
    ./umbriel
    ./nvim
    ./niri
    ./mpv
    ./quickshell
    ./rmpc
    ./rofi
  ];
}
