{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    grim
    slurp
    swappy
    wl-clipboard
    wl-clip-persist
    cliphist
  ];
}
