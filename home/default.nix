{ config, pkgs, ... }:

{
  home.username = "tage";
  home.homeDirectory = "/home/tage";

  imports = [./user];

  # cool tools
  home.packages = with pkgs; [

    # cli-tools
    tree
    ffmpeg
    htop

    # cool cli-tools (mostly rust stuff, actually only rust stuff i think) 
    zoxide 
    ripgrep
    presenterm # this is soooo cool
    tokei
    eza
    bat
    du-dust
    hyperfine
    bacon
    spotify-player
    fselect # this is nice have always struggled with find and stuff

    # development
    # rust
    cargo
    clippy
    rustc
    rustfmt
    rust-analyzer

    # latex
    texlab
    tectonic

    # pdf
    zathura

    # python
    python3

    # c/c++
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
    vlc
    rmg-wayland
    
    # school
    teams-for-linux


    
  ];


  programs.home-manager.enable = true;
  
  home.stateVersion = "24.11";
}

