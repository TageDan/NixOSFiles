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
    spotify-player
    fselect # this is nice have always struggled with find and stuff
    htop

    # development
    cargo
    rustc

    python3

    gcc
    gnumake


    # tui programs
    gitui
        
    # network cli tools
    dnsutils # nslookup and dig
    
    # screenshot cli tools (I like these :D)
    grim
    swappy
    slurp

    # gui
    gimp 

    # school
    teams-for-linux


    
  ];


  programs.home-manager.enable = true;
  
  home.stateVersion = "24.11";
}

