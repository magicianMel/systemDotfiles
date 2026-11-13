{ inputs, config, pkgs, ... }:
{
  home.packages = [
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.system}.obsidian
  ];
}
