
{
  description = "My Nixos Laptop Flake";

  inputs = {
    # NixOS official package source, using the nixos-unstable branch here
    nixpkgs.url = "nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";

      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos =
    let pkgs = import nixpkgs { config.allowUnfree = true; system = "x86_64-linux"; };
    in
    nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
      modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./system/configuration.nix

        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.backupFileExtension = "hm-backup";

          
          home-manager.users.tage = import ./home;

        }
      ];
    };
    
    # homeConfigurations = {
    #   tage = home-manager.lib.homeManagerConfighuration {
    #     modules = [./home];
    #     extraSpecialArgs = {
    #       inherit inputs;
    #     };
    #   };
    # };
  };
}
