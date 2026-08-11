{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
  };

  home.packages = with pkgs; [
    ripgrep #better grep
    fd #fuzzy finder
    tree-sitter #i think this is supposed to go here
    clang #tree-sitter dependency
  ];
}
