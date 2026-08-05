{ inputs, config, lib, pkgs, ... }:

{
  imports =
    [ 
      /etc/nixos/hardware-configuration.nix
      /home/clio/nixosDotfiles/modules/nixos
      inputs.home-manager.nixosModules.home-manager
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
				
	programs.appimage.enable = true;
  programs.appimage.binfmt = true;

   networking.hostName = "circuit"; # Define your hostname.

 


   time.timeZone = "Asia/Singapore";


   nixpkgs.config.allowUnfree = true;

   users.users.clio = {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" "audio" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       tree
       keepassxc
       
     ];
   };

   environment.systemPackages = with pkgs; [
     vim 
     wget
     git
     alacritty
     ntfs3g
     bat
     ntfsprogs
     neovim
     fish
     htop
     btop
     hwinfo
     bat
     wget
     yt-dlp
     git
     kitty
     alacritty
     rmpc
     mpc
     mpdscribble
   ];


  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; # if you touch this they'll get you

}

