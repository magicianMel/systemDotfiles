{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    (discord.override { withVencord = true; })
    (discord-ptb.override { withVencord = true;})
    vesktop
  ];
}