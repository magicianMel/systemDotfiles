{ inputs, config, pkgs, ... }:
{
  security.nix-secrets = {
    enable = true;
    storage = ../../../../secrets; # put secrets in here (nixosDotfiles/secrets)
    identityPaths = [
      "/home/clio/.config/age/keys.txt"
    ];
    recipientAliases = {
      master = "age15hzj7mvgre7mrat7xfvyllydms5pw8s8tx9xfutfjstxshqlx56q5k8q47";
    };
    secrets = {
      # recipients will recieve the age key to unlock the secrets...
      lastfm_password = {
	recipients = [ "master" ];
	owner = "clio";
	group = "users";
	mode = "0600";
      };
      ssh-key = {
	recipients = [ "master" ];
	owner = "clio";
	group = "users";
	mode = "0600";
      };
    };
  };
}
