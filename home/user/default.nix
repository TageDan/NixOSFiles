{
  imports = [
    ./git.nix
    ./firefox.nix
    ./config.nix
    ./fish.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

 programs.home-manager.enable = true; 
}
