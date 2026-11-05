{ config, pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    onlyoffice-desktopeditors
    libreoffice-qt
  ];
}
