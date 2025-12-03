{
  description = "My NixOS configuration using flakes and home-manager";
   inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable"; 

    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules = [
          ./hosts/thinkpad/configuration.nix
          ./modules/display-manager.nix
          #./modules/audio.nix

          home-manager.nixosModules.home-manager {
            home-manager.users.keshav = {
             
              imports = [ ./home.nix ];
              home.stateVersion = "25.05"; 

            };
          }
        ];
      };
    };
}