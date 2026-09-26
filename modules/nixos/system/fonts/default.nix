{ pkgs, lib, ... }:
{
  fonts = {
    packages = with pkgs; [
      cozette
      dejavu_fonts
      maple-mono.NF
      nerd-fonts.jetbrains-mono
      noto-fonts
      noto-fonts-monochrome-emoji
      noto-fonts-color-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      wqy_zenhei
      monocraft
      annotation-mono
      nerd-fonts.monofur
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
	sansSerif = ["Noto Sans"];
	serif = ["Noto Serif"];
	monospace = ["Noto Sans Mono"];
	emoji = ["Noto Color Emoji"];
      };
    };
  };
}
