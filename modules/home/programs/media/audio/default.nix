{ config, pkgs, ... }:
{
  services.mpd = {
    enable = true;
    musicDirectory = "${config.home.homeDirectory}/audio";
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
    endpoints = {
      "last.fm" = {
	passwordFile = "/run/nix-secrets/secrets/lastfm_password";
	username = "hakiicho";
      };
    };
  };

  programs.rmpc = {
    enable = true;
  };

  home.packages = with pkgs; [
    mpc
    playerctl
    cava
    mpd-mpris
    mpd-discord-rpc
    carla
    easyeffects
  ];
}
