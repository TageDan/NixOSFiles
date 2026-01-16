{
  imports = [
    ./git.nix
    ./firefox.nix
    ./config.nix
    ./zsh.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  programs.home-manager.enable = true;
}
