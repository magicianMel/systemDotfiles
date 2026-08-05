{ config, pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };

  environment.systemPackages = with pkgs; [
    # notification center
    hyprlock
    hypridle
    awww
    swaynotificationcenter # notification center
  ];
}