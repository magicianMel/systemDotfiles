{ config, pkgs, lib, ... }:
{
  xdg.configFile."niri" = {
    source = config.lib.file.mkOutOfStoreSymlink "./niri"
  
  xdg.portal.config.niri = {
    "org.freedesktop.impl.portal.FileChooser" = [ "kde" ];
  };

  
}
