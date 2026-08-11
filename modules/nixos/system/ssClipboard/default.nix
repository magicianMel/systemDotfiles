{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    grim
    slurp
    swappy

    copyq
    
  ];
}