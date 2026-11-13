{ config, pkgs, inputs, pkgsUnstable, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-vaapi
      obs-vkcapture
      obs-websocket
    ];
  };

  home.packages = [
  pkgsUnstable.obs-cmd
  ];
}
