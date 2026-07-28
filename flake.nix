{
  description = "NixOS Flake";
  inputs = {
		nixpkgs.url = "nixpkgs/nixos-26.05";

    home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };
  
  outputs = { self, nixpkgs, home-manager, ... }@inputs : {
		nixosConfigurations.circuit = nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs; };
			system = "x86_64-linux";
			modules = [ 
				./hosts/circuit/configuration.nix
			];
		};
  };
}
