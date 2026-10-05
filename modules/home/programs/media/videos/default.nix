{ config, inputs, pkgs, lib, ... }:
{
  programs.mpv = {
    enable = true;
  };
  home.packages = with pkgs; [
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.system}.ani-cli
  ];
}
