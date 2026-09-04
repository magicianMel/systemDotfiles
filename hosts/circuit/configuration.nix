{ inputs, config, lib, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    ../../modules/nixos
    inputs.home-manager.nixosModules.home-manager
    inputs.nix-secrets.nixosModules.default
  ];

  # grub bootloader
  boot.loader = {
    timeout = 3;
    efi = {
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      devices = [ "nodev" ];
      useOSProber = true;
      extraEntriesBeforeNixOS = false;
      extraEntries = ''
	menuentry "reboot" {
	  reboot
	}
	menuentry "shutdown" {
	  halt
	}
      '';
      };
    };
  
  # enable ntfs and mount duper
  environment.systemPackages = [ pkgs.ntfs3g pkgs.ntfsprogs ];
  boot.supportedFilesystems = [ "ntfs" ];
  fileSystems."/mnt/duper" =  {
    device = "/dev/disk/by-uuid/7EDF543B77C64B01";
    fsType = "ntfs";
    options = [ "nofail" ];
  };
       
  # enable home-manager and nix-helper (nh)
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    useGlobalPkgs = true;
    useUserPackages = true;
    users = {
      "clio" = import ./home.nix;
    };
    backupFileExtension = "backup";
  };
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "~/nixosDotfiles";
  };

  # hostname and username
  networking.hostName = "circuit"; 
  users.users.clio = {
    isNormalUser = true;
    extraGroups = [
      "wheel" # sudo
      "networkmanager"
      "audio"
    ];
  };

  time.timeZone = "Asia/Singapore";

  nixpkgs.config.allowUnfree = true; # allow proprietary software to be downloaded
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # enable updated nix commands and flakes
  system.stateVersion = "26.05"; # if you touch this they'll get you

}

