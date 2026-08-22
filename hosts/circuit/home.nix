{ config, pkgs, inputs, ... }: 

{
  home.username = "clio";
  home.homeDirectory = "/home/clio";
  home.stateVersion = "26.05";

  imports = [
    ./../../modules/home
  ];
  programs.home-manager.enable = true;

  # lowercase user directories
  xdg.userDirs = {
    enable = true;
    desktop = "${config.home.homeDirectory}/desktop";
    music = "${config.home.homeDirectory}/audio";
    download = "${config.home.homeDirectory}/downloads";
    videos = "${config.home.homeDirectory}/videos";
    pictures = "${config.home.homeDirectory}/images";
    documents = "${config.home.homeDirectory}/documents";
    projects = "${config.home.homeDirectory}/projects";
    templates = "${config.home.homeDirectory}/templates";
    publicShare = "${config.home.homeDirectory}/public";
    createDirectories = true;
  };
}
