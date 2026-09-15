{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    flameshot
    wl-clipboard
    wl-clip-persist
    cliphist
  ];
}
