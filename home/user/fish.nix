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
    zoxide init fish | source
    ";
  };


}
