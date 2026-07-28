{ inputs, config, pkgs, lib, ... }:
{
  programs.git = {
    enable = true;
    userName = "magicianMel";
    userEmail = "hakiminny@gmail.com";
    
    aliases = {
      co = "checkout";
      ci = "commit";
      st = "status";
    };
  };
}