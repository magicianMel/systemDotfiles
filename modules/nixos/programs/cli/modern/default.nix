{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gping
    bat
    btop
    eza
    zoxide
  ];
}
