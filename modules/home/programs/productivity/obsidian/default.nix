{ config, pkgs, pkgsUnstable, ... }:
{
  home.packages = [
    pkgsUnstable.obsidian
  ];
}
