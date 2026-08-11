{ config, pkgs, ... }:
{
  services.mpd = {
    enable = true;
    musicDirectory = "${config.home.homeDirectory}/Music";
    playlistDirectory = "/mnt/duper/music/playlists/";
    extraConfig = ''
      audio_output {
	type "pulse"
	name "mpd pipewire"
      }
    '';
  };

  services.mpdscribble = {
    enable = true;
  };

  programs.rmpc = {
    enable = true;
  };

  home.packages = with pkgs; [
    mpc
    playerctl
  ];
}
