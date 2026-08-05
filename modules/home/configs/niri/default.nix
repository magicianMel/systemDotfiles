{ config, pkgs, ... }:
{
  xdg.configFile."niri/config.kdl".source = ./config.kdl;
  
  xdg.portal.config.niri = {
    "org.freedesktop.impl.portal.FileChooser" = [ "kde" ];
  };

  
}
