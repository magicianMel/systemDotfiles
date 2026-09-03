{ config, lib, ... }:
{
  xdg.configFile."rmpc" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/nixosDotfiles/modules/home/configs/rmpc/rmpc";
    recursive = true;
    force = true;
  };
}
