{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
	name = "magicianMel";
	email = "hakiminny@gmail.com";
      };
    };
  };
}

