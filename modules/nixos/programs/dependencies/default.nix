{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    webkitgtk_4_1
    clang
  ];
}
