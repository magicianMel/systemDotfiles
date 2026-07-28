{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
    desktopManager.plasma6.enable = true;
  };
}