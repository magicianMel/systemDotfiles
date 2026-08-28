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
    verbose = 2;
  };

  services.mpd-discord-rpc.enable = true;
  services.mpd-mpris.enable = true;

  programs.rmpc = {
    enable = true;
  };

  home.packages = with pkgs; [
    mpc
    playerctl
    cava
    carla
    mpd-discord-rpc
    easyeffects
  ];
}
