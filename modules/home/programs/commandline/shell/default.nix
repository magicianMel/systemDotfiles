{ config, pkgs, ... }:
{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };
  programs.bash = {
    enable = true;
    shellAliases = {
      neofetch = "fastfetch";
      cp = "cp -r";
      ls = "eza --color=auto";
      lt = "eza --tree";
      cat = "bat";
      nvix = "nvim ~/nixosDotfiles";
      nhup = "nh os switch ~/nixosDotfiles#circuit --update";
      cd = "z";
    };

    bashrcExtra = ''
      PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '

      function ya() { # yazi: cd into cwd on quit
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
        yazi "$@" --cwd-file="$tmp"
        if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
          cd -- "$cwd"
        fi
        rm -f -- "$tmp"
      }

      delete-generations() {
        sudo nix-env --delete-generations "$@" --profile /nix/var/nix/profiles/system
       }

      # wraps tack around gh auth token to bypass rate limits
      # omits the need for programs.tack.nixConfTokens = true;
      # also stays platform agnostic rather than being locked to nixOS
      # use gh auth login to configure the credentials
      tack() {
        GH_TOKEN="$(gh auth token)" command tack "$@"
      }
      eval "$(zoxide init bash)"
      fastfetch
    '';
  };
}

