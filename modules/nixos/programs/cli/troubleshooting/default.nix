{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    htop
    btop
    hwinfo
    speedtest-cli
  ];
}
