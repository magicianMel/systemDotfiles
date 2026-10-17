{ config, pkgs, lib, ... }:
{
  xdg.configFile."kitty" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/.nixos/assets/configs/kitty/kitty";
    recursive = true;
    force = true;
  };
}
