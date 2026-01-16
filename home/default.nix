{ pkgs, inputs }:
{
  imports = [
    inputs.stylix.nixosModules.stylix
    inputs.home-manager.nixosModules.home-manager
  ];

  stylix = {
    enable = true;
    autoEnable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    home-manager.backupFileExtension = "hm-backup";
    user.tage = import ./home.nix;
  };

}
