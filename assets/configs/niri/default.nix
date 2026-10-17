{ config, pkgs, lib, ... }:
{
  xdg.configFile."niri" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/.nixos/assets/configs/niri/niri";
    recursive = true;
    force = true;
  };
  xdg.portal.config.niri = {
    "org.freedesktop.impl.portal.FileChooser" = [ "kde" ];
  };

  
}
