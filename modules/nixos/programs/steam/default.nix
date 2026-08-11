{ config, pkgs, inputs, ... }:
{
  programs.steam = {
    enable = true;
    extest.enable = true;
  };

  programs.gamemode = {
    enable = true;
  };

  programs.gamescope = {
    enable = true;
  };
}
