
{
  description = "My Nixos Laptop Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";

      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";

      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
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
          home-manager.useUserPackages = true;

          home-manager.backupFileExtension = "hm-backup";

          home-manager.extraSpecialArgs = {inherit inputs;};
          
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
