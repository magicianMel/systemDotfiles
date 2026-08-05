{ config, pkgs, inputs, ... }: 

{
  home.username = "clio";
  home.homeDirectory = "/home/clio";
  home.stateVersion = "26.05";

  imports = [
    ./../../modules/home
  ];

  home.packages = with pkgs; [
    mpc
    rmpc
    cava
    mpd-mpris
    playerctl
    carla
    nicotine-plus
    qbittorrent
    fish
    rofi
    syncthing
    obsidian
    kitty
    easyeffects
    vscodium
  ];


  programs.home-manager.enable = true;
}
