{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
  ];

  # what did you expect? i'm a linux user
}
