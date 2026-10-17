{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
      })
    (discord-canary.override {
      withOpenASAR = true;
      withVencord = true;
      })
   vesktop
  ];
}
