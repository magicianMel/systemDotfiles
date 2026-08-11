{ inputs, config, pkgs, lib, ... }:
{
  programs.git = {
    enable = true;
  };
  
  programs.git.config = {
    user.email = "hakiminny@gmail.com";
    user.name = "magicianMel";
    alias = {
      co = "checkout";
      ci = "commit";
      st = "status";
    };
  };
}
