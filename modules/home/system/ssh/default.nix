{ pkgs, lib, config, ... }:
{
  programs.ssh = {
    enable = true;
    
    settings."github.com" = {
      User = "git";
      IdentityFile = "/run/nix-secrets/secrets/ssh-key";
      IdentitiesOnly = true;
    };

    settings."circuit" = {
      HostName = "circuit";
      User = "clio";
      IdentityFile = "/run/nix-secrets/secrets/ssh-key";
      IdenititesOnly = true;
    };
  };
}
