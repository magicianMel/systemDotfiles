{ inputs, config, lib, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    ../../modules/nixos
    inputs.home-manager.nixosModules.home-manager
    inputs.nix-secrets.nixosModules.default
  ];


   boot.supportedFilesystems = [ "ntfs" ];

   fileSystems."/mnt/duper" =  {
      device = "/dev/disk/by-uuid/7EDF543B77C64B01";
      fsType = "ntfs";
      options = [ "nofail" ];
   };
       
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    useGlobalPkgs = true;
    useUserPackages = true;
    users = {
      "clio" = import ./home.nix;
    };
    backupFileExtension = "backup";
  };

  networking.hostName = "circuit"; 
  time.timeZone = "Asia/Singapore";

  nixpkgs.config.allowUnfree = true;

  users.users.clio = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; # if you touch this they'll get you

}

