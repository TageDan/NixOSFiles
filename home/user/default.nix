{
  imports = [
    ./git.nix
    ./firefox.nix
    ./config.nix
    ./zsh.nix
    ./helix.nix
    ./etc.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  programs.home-manager.enable = true;
}
