{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    (prismlauncher.override {
      additionalPrograms = [ ffmpeg ];
      jdks = [ 
	jdk25
	jdk21
	jdk17
	jdk8
      ];
    })
  ];
}
