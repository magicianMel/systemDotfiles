{ config, pkgs, inputs, ... }: 

{
  home.username = "clio";
  home.homeDirectory = "/home/clio";
  home.stateVersion = "26.05";

  imports = [
    ./../../modules/home
  ];
  programs.home-manager.enable = true;
}
