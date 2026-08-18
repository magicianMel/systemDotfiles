{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    corefonts
    noto-fonts
    noto-fonts-monochrome-emoji
    noto-fonts-color-emoji
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans-static
    noto-fonts-cjk-serif-static
    wqy_zenhei
  ];
}
