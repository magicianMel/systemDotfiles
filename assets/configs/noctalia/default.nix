{ config, lib, ... }:
{
  xdg.configFile."noctalia" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/.nixos/assets/configs/noctalia";
    recursive = true;
    force = true;
  };
}
