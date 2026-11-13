{
  description = "NixOS Flake";
  inputs = {
    # packages
    nixpkgs.url = "nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "nixpkgs/nixpkgs-unstable";
    
    # noctalia
    noctalia = { 
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia-greeter = {
      url = "github:noctalia-dev/noctalia-greeter";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    umbriel.url = "git+https://github.com/noctalia-dev/umbriel";
    
    # nix add-ons
    nix-secrets.url = "github:unnamed-systems/nix-secrets/dev";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs: 
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
    in { 
      nixosConfigurations = {
	circuit = lib.nixosSystem {
	  specialArgs = { inherit inputs; };
	  modules = [
	    ./hosts/circuit/configuration.nix
	    inputs.home-manager.nixosModules.home-manager
	    ({ config, ... }: {
	      home-manager.extraSpecialArgs = {
		pkgsUnstable = import nixpkgs-unstable {
		  inherit system;
		  config = config.nixpkgs.config;
		  overlays = config.nixpkgs.overlays;
		};
	      # pkgsUnstable = nixpkgs-unstable.legacyPackages.${system};
	      };
	    })
	  ];
	};


      };
    };
}
