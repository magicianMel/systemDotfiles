{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    bat
    neovim
    fish
    htop
    btop
    hwinfo
    yt-dlp
    psmisc
    playerctl
  ];
}