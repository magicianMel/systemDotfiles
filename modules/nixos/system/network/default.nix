{ config, pkgs, lib, ... }:
{
  networking.networkmanager.enable = true;
  services.openssh = {
    enable = true;
    openFirewall = true;
  };
  services.tailscale = {
    enable = true;
    openFirewall = true;
  };
}
