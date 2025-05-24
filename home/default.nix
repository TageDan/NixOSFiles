{ config, pkgs, ... }:

{
  home.username = "tage";
  home.homeDirectory = "/home/tage";

  imports = [./user];

  # cool tools
  home.packages = with pkgs; [

    # cli-tools
    tree

    # cool cli-tools (mostly rust stuff) 
    zoxide 
    ripgrep
    presenterm # this is soooo cool
    tokei
    bat
    du-dust
    hyperfine
    bacon
    ncspot
    fselect # this is nice have always struggled with find and stuff

    # development
    cargo
    rustc

    python3


    # tui programs
    gitui
        
    # network cli tools
    dnsutils # nslookup and dig
    
    # screenshot cli tools (I like these :D)
    grim
    swappy
    slurp


    
  ];


  programs.home-manager.enable = true;
  
  home.stateVersion = "24.11";
}

