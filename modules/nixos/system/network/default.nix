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

  # The Philippines has banned Discord! Oh no!
  services.cloudflare-warp.enable = true;

  environment.systemPackages = [ pkgs.cloudflare-warp ];
}
