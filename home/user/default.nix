{
  imports = [
    ./git.nix
    ./firefox.nix
    ./config.nix
    ./zsh.nix
    ./git.nix
    ./gtk.nix
    ./qt.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

 programs.home-manager.enable = true; 
}
