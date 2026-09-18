{ config, lib, ... }:
{
  xdg.configFile."umbriel" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/nixosDotfiles/assets/configs/umbriel/umbriel";
    recursive = true;
    force = true;
  };
}
