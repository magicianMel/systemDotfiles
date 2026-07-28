{ config, pkgs, inputs, ... }: 

{
  home.username = "cli";
  home.homeDirectory = "/home/cli";
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
    (pkgs.wrapOBS 
      {plugins = with pkgs.obs-studio-plugins ; [
        wlrobs
        obs-pipewire-audio-capture
        obs-vaapi
        obs-vkcapture
	]; 
      })
    vscodium
  ];


  programs.home-manager.enable = true;
}
