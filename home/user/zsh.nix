{config, pkgs, ...}:

{ 
  programs.zsh = {

    enable = true;
    enableCompletion = true;
    shellAliases = {
      "ls" = "eza";
      "ll" = "eza -l";
      "la" = "eza -a";
      "lla" = "eza -la";

      "cat" = "bat";
    };

  oh-my-zsh = {
  enable = true;
    plugins = [
      "git"         
      "z"
      "eza"
    ];
    theme = "macovsky";
    
  };
  };
}
