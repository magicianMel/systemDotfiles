{ config, pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.system}.firefox
  ];
}
