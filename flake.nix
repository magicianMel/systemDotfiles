{
  description = "NixOS Flake";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    nix-secrets.url = "github:unnamed-systems/nix-secrets/dev";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-unstable.follows = "nixpkgs-unstable";
    };
  };
  outputs = { self, nixpkgs, nixpkgs-unstable, ... } @ inputs: { 
    nixosConfigurations.circuit = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
	./hosts/circuit/configuration.nix
	inputs.home-manager.nixosModules.default
      ];
    };
  };
}
