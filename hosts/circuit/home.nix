{ config, pkgs, inputs, ... }: 

{
  home.username = "clio";
  home.homeDirectory = "/home/clio";
  home.stateVersion = "26.05";

  imports = [
    ./../../modules/home
    ./../../assets/configs
  ];
  programs.home-manager.enable = true;

  # lowercase user directories
  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    desktop = "${config.home.homeDirectory}/desktop";
    music = "${config.home.homeDirectory}/audio";
    download = "${config.home.homeDirectory}/downloads";
    videos = "${config.home.homeDirectory}/videos";
    pictures = "${config.home.homeDirectory}/images";
    documents = "${config.home.homeDirectory}/documents";
    projects = "${config.home.homeDirectory}/projects";
    templates = "${config.home.homeDirectory}/templates";
    publicShare = "${config.home.homeDirectory}/public";
  };

  # cursor
  home.packages = [ pkgs.hyprcursor ];
  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
    gtk.enable = true;
    x11.enable = true;
    hyprcursor.enable = true;
    hyprcursor.size = 24;
  };
}
