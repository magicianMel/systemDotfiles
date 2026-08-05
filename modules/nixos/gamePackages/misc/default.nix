{ config, pkgs, inputs, ... }:
{
  programs.gamemode.enable = true;

  programs.steam.gamescopeSession.enable = true;

  environment.systemPackages = with pkgs; [
    mangohud
  ];

}