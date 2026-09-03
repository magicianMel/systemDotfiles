{ config, pkgs, lib, ... }:
{
  programs.mpv = {
    enable = true;
  };
  home.packages = with pkgs; [
    ani-cli
  ];
}
