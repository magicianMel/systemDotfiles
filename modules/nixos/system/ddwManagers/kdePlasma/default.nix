{ config, pkgs, ... }:
{
  services.desktopManager.plasma6.enable = true;
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
  };
}