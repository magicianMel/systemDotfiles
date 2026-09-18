{ ... }:
{
  xdg.configFile."umbriel" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/nixosDotfiles/assets/configs/umbriel";
    recursive = true;
    force = true;
  };
}
