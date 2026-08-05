{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (prismlauncher.override {
      additionalPrograms = [ ffmpeg ];

      jdks = [
        jdk21
        jdk17
        jdk8
      ];
    })
  ];
}