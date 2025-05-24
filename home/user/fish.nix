{config, pkgs, ...}:

{
  home.packages = with pkgs; [
    eza
  ];

  programs.fish = {

    enable = true;
    shellAliases = {
      "ls" = "eza";
      "ll" = "eza -l";
      "la" = "eza -a";
      "lla" = "eza -la";
    };

    shellInit = "
    # init zoxide
    zoxide init fish | source

    # setup ssh-key for github
    eval $(ssh-agent -c)
    ssh-add ~/.ssh/id_ed25519
    ";
  };


}
