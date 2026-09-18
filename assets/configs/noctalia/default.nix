{ ... }:
{
  xdg.configFile."noctalia" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/clio/nixosDotfiles/assets/configs/noctalia";
    recursive = true;
    force = true;
  };
}
