{ config, pkgs, lib, ... }:
{
  home.packages = [
    pkgs.mpv
  ];
  home.file.".config/mpv".source = ./../../../configs/mpv/.config/mpv;
}