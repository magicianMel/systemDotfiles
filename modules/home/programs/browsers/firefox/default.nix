{ config, pkgs, inputs, ...}:
{
  programs.firefox = {
    enable = true;
  };
  programs.floorp = {
    enable = true;
  };
}
