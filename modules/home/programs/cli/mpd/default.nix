{ config, lib, pkgs, ... }:
{
  services.mpd = {
    enable = true;
    musicDirectory = "${config.home.homeDirectory}/Music";
    playlistDirectory = "/mnt/duper/music/playlists/";
    extraConfig = ''
      audio_output {
        type "pulse"
        name "PipeWire Sound Server"
      }
    '';
  };

  home.packages = with pkgs; [
    mpc
  ];
}